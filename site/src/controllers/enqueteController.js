var enqueteModel = require("../models/enqueteModel");

function votarNoAlbum(req, res){
    var idUsuario = req.params.idUsuario;
    var idAlbum = req.params.idAlbum;

    if(idAlbum == undefined || idAlbum == undefined){
        res.status(400).send("Um dos parametros está undefined!");
    } else{
        enqueteModel.votarNoAlbum(idUsuario, idAlbum)
        .then(
            function (resultado) {
                res.json(resultado);
            }
        )
        .catch(
            function (erro) {
                console.log(erro);
                console.log("Houve um erro ao realizar o post: ", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            }
        );
    }
}

function verificar(req, res) {
    var idUsuario = req.params.idUsuario;

    enqueteModel.verificar(idUsuario)
    .then(function (resultado) {
        res.json(resultado);
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao verificar a tabela: ", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

function dadosGrafico(req, res) {

    enqueteModel.dadosGrafico()
    .then(function (resultado) {
        res.json(resultado);
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao verificar a tabela: ", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}


module.exports = {
    votarNoAlbum,
    verificar,
    dadosGrafico
}