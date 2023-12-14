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

/**
 * @openapi
 * /pois/region/{regionName}:
 *   get:
 *     tags: [POI]
 *     summary: Get a list of POIs in a specified region.
 *     security:
 *       - basicAuth: []
 *     responses:
 *       200:
 *         description: A list of POIs in a region
 *       401:
 *         description: Unauthorized!
 *       500:
 *         description: Server Error
 */

poiRouter.get('/region/:regionName', pController.findPOIByRegion.bind(pController));

/**
 * @openapi
 * /pois/create:
 *   post:
 *     tags: [POI]
 *     summary: Create a new POI.
 *     security:
 *       - basicAuth: []
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/Poi'
 *     responses:
 *       201:
 *         description: A list of POIs in a region.
 *       400:
 *         description: Bad request. Check request payload.
 *       401:
 *         description: Unauthorized!
 *       500:
 *         description: Server Error.
 */

poiRouter.post('/create', pController.createPOI.bind(pController));

/**
 * @openapi
 * /pois/edit:
 *   post:
 *     tags: [POI]
 *     summary: Edit a POI.
 *     security:
 *       - basicAuth: []
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/Poi'
 *     responses:
 *       201:
 *         description: A list of POIs in a region.
 *       400:
 *         description: Bad request. Check request payload.
 *       401:
 *         description: Unauthorized!
 *       500:
 *         description: Server Error.
 */

poiRouter.post('/edit', pController.editPOI.bind(pController));
poiRouter.post('/recommend/:id', pController.recommendPOI.bind(pController));
poiRouter.get('/check/:id',pController.checkPOIID.bind(pController));
poiRouter.post('/delete/:id',pController.deletePOIById.bind(pController));
poiRouter.post('/review',pController.reviewPOI.bind(pController));
export default poiRouter