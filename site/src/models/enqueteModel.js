var database = require("../database/config");

function votarNoAlbum(idUsuario, idAlbum) {
    console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function publicar(): ", idUsuario, idAlbum);
    var instrucao = `
    INSERT INTO votacao (idAlbum, fkUsuario) VALUES ('${idAlbum}', '${idUsuario}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}


function verificar(idUsuario) {
    console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function verificar(): ", idUsuario);
    var instrucao = `
    SELECT * FROM votacao WHERE fkUsuario = ${idUsuario};
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function dadosGrafico() {
    console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function dadosGrafico(): ");
    var instrucao = `
    SELECT
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 1) as album1,
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 2) as album2,
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 3) as album3,
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 4) as album4,
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 5) as album5,
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 6) as album6,
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 7) as album7,
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 8) as album8,
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 9) as album9,
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 10) as album10,
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 11) as album11,
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 12) as album12,
    (select COUNT(idAlbum) FROM votacao WHERE idAlbum = 13) as album13;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}


module.exports = {
    votarNoAlbum,
    verificar,
    dadosGrafico
}
