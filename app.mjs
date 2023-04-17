import express, { urlencoded } from 'express';
import Database from 'better-sqlite3';
import expressSession from 'express-session'
import betterSqlite3Session from 'express-session-better-sqlite3'

const sessDb = new Database('session.db')
const SqliteStore = betterSqlite3Session(expressSession,sessDb)

const app = express()
import 'dotenv/config'

import db from './database/db.mjs'

app.use(expressSession({
    store: new SqliteStore(),
    secret:'Random',
    resave:true,
    saveUninitialized:false,
    rolling:true,
    unset:'destroy',
    proxy:true,
    cookie: {
        maxAge:600000,
        httpOnly:false
    }
}))

app.use(express.json());
app.use(express.static('public'));
app.set('view engine', 'html');

app.use(express.urlencoded({extended:false}));

app.post('/login' , (req,res) => {
    try{
        const stmt = db.prepare('SELECT * FROM poi_users WHERE username=? AND password=?')
        const results = stmt.all(req.body.username,req.body.password)
        if (results.length == 1){
            req.session.username = req.body.username
            res.status(200).json({"username":req.session.username})
        } else {
        res.status(401).json({error:"Incorrect Login!"})
    }
    } catch(error){
        res.status(401).json({error:"User Not Found !"})
    }
   
})

app.get('/login', (req,res) => {
    res.json({username : req.session.username || null})
})
app.post('/logout',(req,res) => {
    req.session = null
    res.json({'success':1})
})

app.use( (req,res,next) => {
    if (["POST","DELETE"].indexOf(req.method)==-1){
        console.log('not a post/delete, allowing access');
        next()
    } else{
        if (req.session.username){
            console.log(`username exists: ${req.session.username}`)
            next()
        } else {
            res.status(401).json({error:"You're not logged in. Go Away!"})
        }
    }
})


import poiRouter from './routes/poi.mjs';
app.use('/poi',poiRouter)





app.listen(3030)
