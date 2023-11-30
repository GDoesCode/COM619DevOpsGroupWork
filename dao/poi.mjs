import mysql from 'mysql';
class POIDao{
    constructor(){
        this.db = mysql.createPool({
            host: "localhost",
            user: "root",
            //password: "C0m619D3V0ps!",
            database:"pointsofinterest"
          });
    }
    findPOIByRegion(regionIn) {
        return new Promise((resolve, reject) => {
            this.db.getConnection((err, connection) => {
                if (err) {
                    reject(err);
                }
                const query1 = 'SELECT * FROM pointsofinterest WHERE region=?';
                connection.query(query1, [regionIn], (err, result) => {
                    connection.release();
                    if (err) {
                        reject(err);
                    } else {
                        resolve(result);
                    }
                });
            });
        });
    }

checkPOIID(idin){
    return new Promise((resolve,reject) =>{
        this.db.getConnection((err,connection) => {
            if(err){
                reject(err)
            }
            const query1 = 'SELECT * FROM pointsofinterest WHERE id=?';
            connection.query(query1,[idin],(err,result)=>{
                connection.release();
                if(err){
                    reject(err);
                } else{
                    resolve(result)
                }
            })
        })
    })
}
createPOI(nameIn,typeIn,countryIn,regionIn,lonIn,latIn,descriptionIn,recommendationsIn){
    return new Promise((resolve,reject) =>{
        this.db.getConnection((err,connection) =>{
            if(err){
                reject(err)
            }
            const query1 = 'INSERT INTO pointsofinterest(name,type,country,region,lon,lat,description,recommendations) VALUES(?,?,?,?,?,?,?,?)'
            connection.query(query1,[nameIn,typeIn,countryIn,regionIn,lonIn,latIn,descriptionIn,recommendationsIn],(err,result)=>{
                connection.release();
                if(err){
                    reject(err)
                } else{
                    if(result.changes == 1){
                        resolve(true)
                        //return true
                    }
                }
            })
        })
    })     
}

editPOI(poiID,nameIn,typeIn,countryIn,regionIn,descriptionIn,recommendationsIn){
    return new Promise((resolve,reject) =>{
        this.db.getConnection((err,connection) =>{
            if(err){
                reject(err)
            }
            const query1 = 'UPDATE pointsofinterest SET name = ?,type = ?,country = ?,region = ?,description = ?,recommendations = ? WHERE id = ?'
            connection.query(query1,[nameIn,typeIn,countryIn,regionIn,descriptionIn,recommendationsIn,poiID],(err,result)=>{
                connection.release();
                if(err){
                    reject(err)
                } else{
                    if(result.changes == 1){
                        resolve(true)
                        //return true
                    }
                }
            })
        })
    })     
}

recommendPOI(idIn){
    return new Promise((resolve,reject)=>{
        this.db.getConnection((err,connection) =>{
            if(err){
                reject(err)
            }
            const query1 = 'UPDATE pointsofinterest SET recommendations = recommendations+1 WHERE id=?'
            connection.query(query1,[idIn],(err,result)=>{
                connection.release();
                if(err){
                    reject(err)
                } else{
                    resolve(result)
                }
            })
        })
    })
}

deletePOIById(poiId) {
    return new Promise((resolve, reject) => {
        this.db.getConnection((err, connection) => {
            if (err) {
                reject(err);
            }
            const query1 = 'DELETE FROM pointsofinterest WHERE id = ?';
            connection.query(query1, [poiId], (queryErr, result) => {
                connection.release(); // Instead of connection.end()

                if (queryErr) {
                    console.error('Error executing DELETE query:', queryErr);
                    reject(queryErr);
                } else {
                    resolve(result); // Only pass the result to resolve
                }
            });
        });
    });
}

}




export default POIDao