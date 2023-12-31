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
const pController = new POIController(mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "C0m619D3V0ps!",
  database:"pointsofinterest"
}));

/**
 * @openapi
 * components:
 *   schemas:
 *     POI:
 *       type: object
 *       required:
 *         - name
 *         - type
 *         - country
 *         - lon
 *         - lat
 *       properties:
 *         id:
 *           type: integer
 *         name:
 *           type: string
 *         type:
 *           type: string
 *         country:
 *           type: string
 *         region:
 *           type: string
 *         lon:
 *           type: number
 *         lat:
 *           type: number
 *         description:
 *           type: string
 *         recommendations:
 *           type: integer
 *         imgRef:
 *           type: string
 */

/**
 * @openapi
 * tags:
 *   name: POIs
 *   description: API managing Points Of Interest.
 * /region/{regionName}:
 *   get:
 *     tags: [POIs]
 *     summary: Get a list of POIs in a specified region.
 *     security:
 *       - basicAuth: []
 *     parameters:
 *       - in: path
 *         name: regionName
 *         required: true
 *         description: Name of the region.
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: A list of POIs in a region
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 $ref: '#/components/schemas/POI'
 *       401:
 *         description: Unauthorized!
 *       500:
 *         description: Server Error
 */

poiRouter.get('/region/:regionName',pController.findPOIByRegion.bind(pController));

/**
 * @openapi
 * /pois/create:
 *   post:
 *     tags: [POIs]
 *     summary: Create a new POI.
 *     security:
 *       - basicAuth: []
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/POI'
 *     responses:
 *       201:
 *         description: Created a new POI.
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
 *     tags: [POIs]
 *     summary: Edit a POI.
 *     security:
 *       - basicAuth: []
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/POI'
 *     responses:
 *       201:
 *         description: POI information updated.
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

/**
 * @openapi
 * /pois/delete/{id}:
 *   delete:
 *     tags: [POIs]
 *     summary: Delete a POI.
 *     security:
 *       - basicAuth: []
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         description: ID of the Point of Interest
 *         schema:
 *           type: string
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/POI'
 *     responses:
 *       201:
 *         description: POI deleted.
 *       400:
 *         description: Bad request. Check request payload.
 *       401:
 *         description: Unauthorized!
 *       500:
 *         description: Server Error.
 */

poiRouter.post('/delete/:id',pController.deletePOIById.bind(pController));
poiRouter.post('/review',pController.reviewPOI.bind(pController));
export default poiRouter