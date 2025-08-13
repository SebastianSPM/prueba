let mysql = require('mysql2');

let con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "12345"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});