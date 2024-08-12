const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
    res.render('index');
});

router.get('/employee/:id', (req, res) => {
    res.render('employee', { id: req.params.id });
});

module.exports = router;
