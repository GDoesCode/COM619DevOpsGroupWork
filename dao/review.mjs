class ReviewDao{
    constructor(db,table){
        this.db = db
        this.table = table
    }


reviewPOI(idIn,reviewIn) {
    const stmt = this.db.prepare("INSERT INTO poi_reviews(poi_id,review) VALUES(?,?)")
    const result = stmt.run(idIn,reviewIn)
    return true
}
}

export default ReviewDao