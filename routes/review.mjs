app.post('/poi/review',(req,res) => {
    try{
        const stmt = db.prepare("INSERT INTO poi_reviews(poi_id,review) VALUES(?,?)")
        const result = stmt.run(req.body.poi_id,req.body.review)
        res.status(200).success({success:1})
    } catch(error){
        res.status(404).json({error:error})
    }
})