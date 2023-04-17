class POIDao{
    constructor(db,table){
        this.db = db
        this.table = table
    }



findPOIByRegion(regionIn){
        const stmt = this.db.prepare("SELECT * FROM pointsofinterest WHERE region=?")
        const rows = stmt.all(regionIn)
        if(rows.length == 0){
            return null;
        }
        else{
            return rows
        }
};

checkPOIID(idin){
    const stmt = this.db.prepare("SELECT * FROM pointsofinterest WHERE id=?")
    const rows = stmt.all(idin)
    if (rows.length == 0){
        return null;
    } else{
        return true
    }
}


createPOI(nameIn,typeIn,countryIn,regionIn,lonIn,latIn,descriptionIn,recommendationsIn){
        const stmt = this.db.prepare(`INSERT INTO pointsofinterest(name,type,country,region,lon,lat,description,recommendations) VALUES(?,?,?,?,?,?,?,?)`)
        const result = stmt.run(nameIn,typeIn,countryIn,regionIn,lonIn,latIn,descriptionIn,recommendationsIn)
        if (result.changes == 1){
            return true
        }
        else{
            return false
        }
        
}

recommendPOI(idIn){
        const stmt = this.db.prepare("UPDATE pointsofinterest SET recommendations = recommendations+1 WHERE id=?")
        const result = stmt.run(idIn)
        if (result.changes==1){
            return true
        } else{
            return false
        }
    
}
}




export default POIDao