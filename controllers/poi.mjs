import POIDao from '../dao/poi.mjs'

class PoiController{
    constructor(db){
        this.dao = new POIDao(db,"pointsofinterest")
    }

findPOIByRegion(req,res){
    try{ 
        const poi = this.dao.findPOIByRegion(req.params.regionName)
        res.json(poi)
    } catch(error){
        res.status(500).json({error:error})
    }
}

checkPOIID(req,res){
    try{
        const poi = this.dao.checkPOIID(req.params.id)
        if (poi == true){
            res.status(200)
        }
    } catch(error){
        res.status(500).json({error:error})
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

recommendPOI(req,res){
    try{
        const result = this.dao.recommendPOI(req.params.id)
        if (result == true){
            res.status(200).json({success:1})
        } else{
            res.status(404).json({error:'No POI with that ID'})
        }
    } catch(error){
        throw error
        
    }
}
}

export default PoiController