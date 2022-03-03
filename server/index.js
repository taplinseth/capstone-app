const express = require('express');
const path = require('path');
//const cookieParser = require('cookie-parser');
//const logger = require('morgan');

const indexRouter = require('./routes/auth');
const usersRouter = require('./routes/users');

const index = express();

index.use(logger('dev'));
index.use(express.json());
index.use(express.urlencoded({ extended: false }));
index.use(cookieParser());
index.use(express.static(path.join(__dirname, 'public')));

index.use('/', indexRouter);
index.use('/users', usersRouter);

module.exports = index;
