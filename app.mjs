// <!-- Copyright [2023] [NodeNinjas]

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License. -->

import express from 'express';
import fileUpload from 'express-fileupload';
import mysql from 'mysql';
import session from 'express-session';
import mysqlSession from 'express-mysql-session';
import * as fs from 'fs';
import * as https from 'https';

const app = express();
import path from 'path'

import { initialiseSwagger } from './Swagger.js';

initialiseSwagger(app);

const MySQLStore = mysqlSession(session);
const sessionStore = new MySQLStore({
    host: 'localhost',
    user: 'root',
    password: 'C0m619D3V0ps!',
    database: 'sessions', // Create a separate database for sessions
    clearExpired: true,
    checkExpirationInterval: 900000, // How frequently expired sessions will be cleared (in milliseconds)
    expiration: 86400000, // Session expiration in milliseconds (1 day)
  });
  app.use(
    session({
      secret: 'random',
      resave: false,
      saveUninitialized: true,
      store: sessionStore,
    })
  );
const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "C0m619D3V0ps!",
    database: "pointsofinterest",
    port: 3306,
    //ssl: {ca: fs.readFileSync("ca.pem")}
});

// Establish the MySQL connection outside of route handlers
con.connect(function (err) {
    if (err) {
        console.error(err);
        throw err;
    }
    console.log('Connected to MySQL database');
}); 

app.use(fileUpload({
    useTempFiles:true,
    tempFileDir:process.env.TMPDIR || 'public/tempPics',
    limits:{fileSize:process.env.UPLOAD_LIMIT_IN_MB * 1024 * 1024}
}))

app.use((req, res, next) => {
    res.set('Access-Control-Allow-Origin', '*');
    next();
});

app.post('/photo/upload/:id', async(req,res) =>{
    try{
        const fileName = req.params.id + req.files.poiPhoto.name ;
        await req.files.poiPhoto.mv(`public/uploadPics/${fileName}`)
        res.status(200).json({success:1})
        con.query('UPDATE pointsofinterest SET imgRef = (?) WHERE id = ?; ',[fileName,req.params.id],function(err,result,fields){
            if (err) {
                console.error(err);
                res.status(500).json({ error: ("Server Error") });
                return;
            }
        })
    } catch(e){
        throw e;
        res.status(500).json({error:e})
    }
})


//app.set('view engine', 'html');
app.use(express.json());
app.use(express.static('public'));
app.use(express.urlencoded({ extended: false }));

// Routes
app.get('/gdpr', (req, res) => {
  res.sendFile(path.join(process.cwd(), 'public', 'gdpr.html'));
});

app.post('/login', (req, res) => {
    const t = req.t;
        con.query('SELECT * FROM poi_users WHERE username=? AND password=?', [req.body.username, req.body.password], function (err, result, fields) {
            if (err) {
                console.error(err);
                res.status(500).json({ error: ("Server Error") });
                return;
            }

            if (result.length === 1) {
                // Store user information in the session
                req.session.username = { username: req.body.username };
                console.log(result[0].isAdmin)
                if(result[0].isAdmin === true || result[0].isAdmin === 1){
                    req.session.isAdmin = true
                }
                res.status(200).json({ "username": req.body.username });
              } else {
                res.status(401).json({ error: 'Incorrect Login!' });
              }
        });
    });;


app.get('/login', (req, res) => {
    if(req.session.username != null){
    res.json({username : req.session.username.username || null})
    }
    else{
        res.json({username : null})
    }
});

app.post('/logout', (req, res) => {
    req.session.username = null
    req.session.isAdmin = false
    res.json({ 'success': 1 });
});

app.use((req, res, next) => {
    // Allow access to signup and non-POST/DELETE requests
    if (req.path === '/signup' && req.method === 'POST') {
        next();
    } else if (["POST", "DELETE"].indexOf(req.method) == -1) {
        console.log('Not a POST/DELETE, allowing access');
        next();
    } else {
        // Check if user is logged in
        if (req.session.username) {
            // Check if user is an admin
            if (req.session.isAdmin) {
                console.log('User is an Admin');
                next();
            } else {
                if (req.path.startsWith('/poi/delete/') || req.path.startsWith('/poi/edit/')) {
                    res.status(401).json({ error: "User is not an admin. Access denied." });
                    console.log("User is not an admin. Access denied.")
                } else {
                    // Allow access for non-admin users to other POST/DELETE requests
                    next();
                }
            }
        } else {
            res.status(401).json({ error: "You're not logged in. Go away!" });
        }
    }
});

app.post('/signup', (req, res) => {
    const { username, password, confirmPassword } = req.body;

    // Check if passwords match
    if (password !== confirmPassword) {
        return res.status(400).json({ error: 'Passwords do not match' });
    }

    // Check if the username is available (not already registered)
    con.query('SELECT username FROM poi_users WHERE username = ?', [username], function (err, result) {
        if (err) {
            console.error(err);
            return res.status(500).json({ error: 'Server Error' });
        }

        if (result.length > 0) {
            return res.status(400).json({ error: 'Username is already in use' });
        }

        // If everything is okay, insert the new user into the database
        con.query('INSERT INTO poi_users (username, password,isAdmin) VALUES (?, ?,?)', [username, password,'FALSE'], function (err, result) {
            if (err) {
                console.error(err);
                return res.status(500).json({ error: 'Server Error' });
            }

            res.status(201).json({ message: 'User registered successfully' });
        });
    });
});

import poiRouter from './routes/poi.mjs';
app.use('/poi', poiRouter);

https
  .createServer(
        {
         key: fs.readFileSync('key.pem',
                        {encoding: 'utf-8'}),
         cert: fs.readFileSync('cert.pem',
                        {encoding: 'utf-8'})
        },
        app
  )
  .listen(8080, () => {
	console.log('Server is running');
  });

//app.listen(8080, () => {
  //  console.log('Server is running');
//});
