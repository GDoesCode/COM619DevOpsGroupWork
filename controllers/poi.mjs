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

import POIDao from '../dao/poi.mjs'
import ReviewDao from '../dao/review.mjs'

class PoiController{
    constructor(){
        this.dao = new POIDao()
        this.dao2 = new ReviewDao()
    }

    findPOIByRegion(req, res) {
        try {
            this.dao.findPOIByRegion(req.params.regionName)
                .then((poi) => {
                    res.json(poi);
                })
                .catch((error) => {
                    res.status(500).json({ error: error });
                });
        } catch (error) {
            res.status(500).json({ error: error });
        }
    }

checkPOIID(req,res){
    try{
        this.dao.checkPOIID(req.params.id)
        .then((poi)=>{
            res.json(poi);
        })
        .catch((error)=>{
            res.status(500).json({ error: error });
        });
    }catch (error){
        res.status(500).json({ error: error });
    }
        const poi = this.dao.checkPOIID(req.params.id)
        if (poi == true){
            res.status(200)
        }
}

deletePOIById(req, res) {
    try {
        console.log(req.params.id)
        this.dao.deletePOIById(req.params.id)
            .then(result => {
                // Handle success, send a response, etc.
                res.status(200).json({ message: 'POI deleted successfully.\nPlease reload the page to review changes', result });
            })
            .catch(error => {
                // Handle errors, send an error response, etc.
                console.error('You are not logged in, go away!:', error);
                res.status(500).json({ error: 'Internal Server Error' });
            });
    } catch (error) {
        // Handle synchronous errors (unlikely in an asynchronous context)
        console.error('Synchronous error:', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
}




createPOI(req,res){
    try{
        if (req.body.name != ""  && req.body.type != "" && req.body.country != "" && req.body.region != "" && req.body.lat != "" && req.body.lon != "" && req.body.description !=""){
            if (req.body.name != null  && req.body.type != null && req.body.country != null && req.body.region != null && req.body.lat != null && req.body.lon != null && req.body.description !=null){
        const poi = this.dao.createPOI(req.body.name, req.body.type,req.body.country,req.body.region,req.body.lon,req.body.lat,req.body.description,req.body.recommendations)
        res.status(200).json({success:1});
            }
            else{
                res.status(400).json({error: req})
            }
        } else{
            res.status(400).json({error: "Blank Field"})
        }
    } catch(error){
        throw error;
    }
}

editPOI(req,res){
    try{
        if (req.body.name != ""  && req.body.type != "" && req.body.country != "" && req.body.region != "" && req.body.description !=""){
            if (req.body.name != null  && req.body.type != null && req.body.country != null && req.body.region != null  && req.body.description !=null){
        const poi = this.dao.editPOI(req.body.id,req.body.name, req.body.type,req.body.country,req.body.region,req.body.description,req.body.recommendations)
        res.status(200).json({success:1});
            }
            else{
                res.status(400).json({error: req})
            }
        } else{
            res.status(400).json({error: "Blank Field"})
        }
    } catch(error){
        throw error;
    }
}
recommendPOI(req,res){
    try{
        const result = this.dao.recommendPOI(req.params.id)
        //console.log(req.params.id)
        if (result == true){
            res.status(200).json({success:1})
        } else{
            res.status(404).json({error:'No POI with that ID'})
        }
    } catch(error){
        throw error
        
    }
}
reviewPOI(req,res){
    try{
        if (this.dao.checkPOIID(req.body.poi_id) == true){
            if (req.body.review != null){
                if (req.body.review != ""){
        const result = this.dao2.reviewPOI(req.body.poi_id,req.body.review)
        if(result == true){
        res.status(200).json({success:1})}
        else{
            res.status(404).json({error:error})
        }
    }
    }
    }
    else{
        res.status(404).json({error:"POI ID doesn't exist"})
    }
    } catch(error){
        throw error
    }
}

}

export default PoiController
