import mysql from 'mysql';

//var con = mysql.createConnection({
  //  host: "localhost",
    //user: "root",
    //password: "",
    //database:"pointsofinterest"
  //});

  const db = con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
  });
//export default con