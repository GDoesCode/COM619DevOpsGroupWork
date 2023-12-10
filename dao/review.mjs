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

import mysql from 'mysql';

class ReviewDao{
    constructor(db,table){
        this.db = mysql.createPool({
            host: "localhost",
            user: "root",
            password: "C0m619D3V0ps!",
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
