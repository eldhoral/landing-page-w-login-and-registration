var mysql = require('mysql');
var express = require('express');
var session = require('express-session');
var bodyParser = require('body-parser');
var path = require('path');
var mysql = require('mysql');
var connection  = require('./database');
var app = express();

//ambil port 8080, kalo buat heroku 3000
let PORT = process.env.PORT || 3000;

//ambil post login dan register
var authenticateController=require('./controllers/login-controller');
var registerController=require('./controllers/register-controller');

//parser buat middleware login dan register
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());

//konek ke view engine --ejs
app.set('view engine', 'ejs');
app.use(express.static('public'));

//ambil dari index.ejs
app.get('/', (req, res) => {
    res.render('index.ejs')
})

//ambil dari main.ejs
app.get('/home', (req, res) => {
    res.render('home.ejs')
})

//ambil dari login.ejs
app.get('/login', (req, res) => {
    res.render('login.ejs')
})

//ambil dari register.ejs
app.get('/register', (req, res) => {
    res.render('register.ejs')
})

//ambil dari 404.ejs. khusus kalo permalink gk ketemu
app.get('/*', (req, res) => {
    res.render('404.ejs')
})

//route handle api buat register dan login, middleware
app.post('/api/register',registerController.register);
app.post('/api/login',authenticateController.authenticate);

//kasih tau kalau sudah berhasil login
console.log(authenticateController);

//route handle controller buat register dan login, middleware
app.post('/controllers/register-controller', registerController.register);
app.post('/controllers/login-controller', authenticateController.authenticate);


//kasih tau kalau udah jalan di 8080
app.listen(PORT, () =>{
    console.log('listening on 8080');
});