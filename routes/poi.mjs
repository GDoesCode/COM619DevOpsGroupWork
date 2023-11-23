import express from "express";
const poiRouter = express.Router();
import mysql from 'mysql';
//import db from '../database/db.mjs'
import POIController from '../controllers/poi.mjs';
import session from "express-session";
const pController = new POIController( mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "C0m619D3V0ps!",
    database:"pointsofinterest"
  }))
poiRouter.get('/region/:regionName', pController.findPOIByRegion.bind(pController));
poiRouter.post('/create', pController.createPOI.bind(pController))
poiRouter.post('/recommend/:id', pController.recommendPOI.bind(pController));
poiRouter.get('/check/:id',pController.checkPOIID.bind(pController))
poiRouter.post('/review',pController.reviewPOI.bind(pController))
export default poiRouter