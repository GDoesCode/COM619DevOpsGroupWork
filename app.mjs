import express from 'express';
import fileUpload from 'express-fileupload';
import mysql from 'mysql';
import * as fs from 'fs';
import * as https from 'https';

const app = express();

const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "pointsofinterest"
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
    useTempFiles: true,
    tempFileDir: process.env.TMPDIR,
    limits: { fileSize: process.env.UPLOAD_LIMIT_IN_MB * 1024 * 1024 }
}));

app.use((req, res, next) => {
    res.set('Access-Control-Allow-Origin', '*');
    next();
});

app.post('/photo/upload/:id', async (req, res) => {
    try {
        const fileName = req.params.id + req.files.poiPhoto.name;
        await req.files.poiPhoto.mv(`${process.env.PERMANENT_UPLOAD_DIR}/${fileName}`);
        res.status(200).json({ success: 1 });
    } catch (e) {
        console.error(e);
        res.status(500).json({ error: e });
    }
});

app.use(express.json());
app.use(express.static('public'));
app.set('view engine', 'html');
app.use(express.urlencoded({ extended: false }));

app.post('/login', (req, res) => {
    const t = req.t;
        con.query('SELECT * FROM poi_users WHERE username=? AND password=?', [req.body.username, req.body.password], function (err, result, fields) {
            if (err) {
                console.error(err);
                res.status(500).json({ error: ("Server Error") });
                return;
            }

            if (result.length === 1) {
                res.status(200).json({ "username": req.body.username });
            } else {
                res.status(401).json({ error: ("Incorrect Login!") });
            }
        });
    });;


app.get('/login', (req, res) => {
    res.json({ username: null });
});

app.post('/logout', (req, res) => {
    res.json({ 'success': 1 });
});

app.use((req, res, next) => {
    if (req.path === '/signup' && req.method === 'POST') {
        next();
    } else if (["POST", "DELETE"].indexOf(req.method) == -1) {
        console.log('not a post/delete, allowing access');
        next();
    } else {
        res.status(401).json({ error: ("You're not logged in. Go Away!") });
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
        con.query('INSERT INTO poi_users (username, password) VALUES (?, ?)', [username, password], function (err, result) {
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

//https
  //.createServer(
    //    {
      //   key: fs.readFileSync('key.pem',
        //                {encoding: 'utf-8'}),
         //cert: fs.readFileSync('cert.pem',
           //             {encoding: 'utf-8'})
        //},
        //app
  //)
  //.listen(8080, () => {
	//console.log('Server is running');
  //});

app.listen(8080, () => {
    console.log('Server is running');
});
