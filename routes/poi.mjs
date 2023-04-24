import express from "express";
const poiRouter = express.Router();
import Database from 'better-sqlite3';

import db from '../database/db.mjs'
import POIController from '../controllers/poi.mjs';
import session from "express-session";
const pController = new POIController(db)
poiRouter.get('/region/:regionName', pController.findPOIByRegion.bind(pController));
poiRouter.post('/create', pController.createPOI.bind(pController))
poiRouter.post('/recommend/:id', pController.recommendPOI.bind(pController));
poiRouter.get('/check/:id',pController.checkPOIID.bind(pController))
poiRouter.post('/review',pController.reviewPOI.bind(pController))
export default poiRouter