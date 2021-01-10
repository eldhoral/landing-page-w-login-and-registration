var CryptoJS = require("crypto-js");
var key = "ASECRET";
 
var connection = require('./../database');
module.exports.authenticate=function(req,res){
  var username=req.body.username;
  var password=req.body.password;
  connection.query('SELECT * FROM user WHERE userName = ?',[username], function (error, results, fields) {
    if (error) {
      res.json({
        status:false,
        message:'there are some error with query'})
    }else{
      if(results.length >0){
        var decipher = CryptoJS.AES.decrypt(results[0].password, key);
        decipher = decipher.toString(CryptoJS.enc.Utf8);
        if(password==decipher){
          res.redirect('/home')
        }else{
          res.json({
            status:false,
            message:"Email and password does not match"});
        }
      }else{
        res.json({
          status:false,    
          message:"Email does not exits"
        });
      }
    }
  });
}
