const express = require("express");
const router = express.Router();
const gaji = require("../controller/gajiController");

/* GET home page. */
router.get("/gaji", gaji.getGaji);
router.get("/gajifull", gaji.getGajiFull);

module.exports = router;
