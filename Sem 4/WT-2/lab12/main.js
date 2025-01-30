const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
require('dotenv').config({path: __dirname + '/.env'});

//enter your connection string here
mongoose.connect(process.env.AtlasUrl).then( async () => {
    console.log('Connected to MongoDB');
    // await mongoose.connection.db.collection('students').find({}).toArray().then(data=>{console.log(data);
    // })

    const app = express();
    app.use(bodyParser.json());
    app.use('/students',require('./src/students'));
    app.use('/products',require('./src/products'));

    app.listen(process.env.PORT)
})

