var express = require("express");
var bodyParser=require("body-parser");
var session = require('express-session');



var app=express();
var PORT = process.env.Port || 8080;

// use session middleware
app.use(session({
    secret: 'secret',
    resave: false,
    saveUninitialized: true,
    cookie: { maxAge: 60000 }
}));

app.use(express.static("public"));

app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());

//set handlebars
var exphbs=require("express-handlebars");
app.engine("handlebars",exphbs({defaultLayout:"main"}));
app.set("view engine","handlebars");

//import all routes
var routes =require("./controllers/mdController.js");
app.use(routes);

app.listen(PORT,function(){
    console.log(`App listening on PORT ${PORT}`);
})