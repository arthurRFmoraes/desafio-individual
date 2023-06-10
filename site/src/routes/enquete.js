var express = require("express");
var router = express.Router();

var enqueteController = require("../controllers/enqueteController");


router.post("/votar/:idAlbum/:idUsuario", function (req, res){
    enqueteController.votarNoAlbum(req, res);
});
router.get("/verificar/:idUsuario", function (req, res) {
    enqueteController.verificar(req, res);
});

module.exports = router;