import mysql from 'mysql';

class ReviewDao{
    constructor(db,table){
        this.db = mysql.createPool({
            host: "localhost",
            user: "root",
            password: "",
            database:"pointsofinterest"
          });
    }
reviewPOI(idIn,reviewIn) {
    return new Promise((resolve,reject)=>{
        this.db.getConnection((err,connection)=>{
            if(err){
                reject(err);
            }
            const query1 = 'INSERT INTO poi_reviews(poi_id,review) VALUES(?,?)'
            connection.query(query1,[idIn,reviewIn],(err,result)=>{
                connection.release();
                if(err){
                    reject(err)
                } else{
                    resolve(result);
                }
            })
        })
    })
}
}
export default ReviewDao