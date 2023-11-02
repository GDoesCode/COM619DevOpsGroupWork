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