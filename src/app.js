const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const cors = require("cors");

const routes = require('./routes');
const app = express();

app.use(cors());
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());

app.use('/api', routes);

const instance = require('./database/db');
instance.schema.install()
    .then(() => console.log('Schema installed!'))

module.exports = app;
