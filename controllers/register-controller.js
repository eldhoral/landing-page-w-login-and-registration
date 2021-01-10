var CryptoJS = require("crypto-js");
var key = "ASECRET";
var express=require("express");
var connection = require('./../database');
 
module.exports.register=function(req,res){
  var today = new Date();
  var cipher = CryptoJS.AES.encrypt(req.body.password, key);
  cipher = cipher.toString();
    var user={
        "Name":req.body.name,
        "userName":req.body.username,
        "password":cipher,
        "email":req.body.email,
        "umurUser":req.body.umur,
    }
    connection.query('INSERT INTO user SET ?',user, function (error, results, fields) {
      if (error) {
        res.json({
            status:false,
            message:'there are some error with query'
        })
      }else{
          res.redirect('/login')
      }
    });
}
