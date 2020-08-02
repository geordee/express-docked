var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.json([{ email: 'john.doe@example.com', name: 'John Doe'}]);
});

module.exports = router;
