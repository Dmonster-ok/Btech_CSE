const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
require('dotenv').config({path: __dirname + '/.env'});

//enter your connection string here
mongoose.connect(process.env.AtlasUrl+'btech').then( async () => {
    console.log('Connected to MongoDB');
    // await mongoose.connection.db.collection('fac').find({}).toArray().then(data=>{console.log(data);
    // })

    const app = express();
    app.use(bodyParser.json());
    app.use('/faculty',require('./src/faculties'));

    app.listen(process.env.PORT)
})

