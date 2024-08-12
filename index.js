const express = require('express');
const path = require('path');
const app = express();
const indexRouter = require('./routes/index');

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, './src/views'));

// assets của ejs
app.use('/assets', express.static(path.join(__dirname, './src/assets')));

app.use('/', indexRouter);

app.listen(3000, () => {
    console.log('Server is running on http://localhost:3000');
});
