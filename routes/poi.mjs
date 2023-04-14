import express from "express";
const poiRouter = express.Router();
import Database from 'better-sqlite3';
const db = new Database("C:\\users\\mac\\pointsofinterest.db");

import POIController from '../controllers/poi.mjs';

const pController = new POIController(db)

poiRouter.post('*' ,(req,res,next) => {
    if(process.env.APP_USER === undefined) {
        res.status(401).json({error:"You're not logged in. GO AWAY!"})
    } else{
        next()
    }
})

poiRouter.get('/region/:regionName', pController.findPOIByRegion.bind(pController));

poiRouter.post('/create', pController.createPOI.bind(pController))

poiRouter.post('/recommend/:id', pController.recommendPOI.bind(pController));

poiRouter.get('/check/:id',pController.checkPOIID.bind(pController))

export default poiRouter