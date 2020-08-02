var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  let name = process.env.USER_NAME;
  let email = process.env.USER_EMAIL;
  res.json([{ email, name }]);
});

module.exports = router;
