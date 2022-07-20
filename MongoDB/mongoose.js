// Importando o mongoose
const mongoose = require("mongoose");

// Configurando o Mongoose e conectando com o banco de dados
//                mongodb:// (LOCAL) (BANCO DE DADOS)
mongoose.connect("mongodb://localhost/myFirstDB").then(() => {
    console.log('MongoDB connected!')
}).catch((err) => {
    console.log(`Error: ${err}`)
})

// Definindo Models

const UsuarioSchema = mongoose.Schema({
    nome: {
        type: String,
        require: true
    },
    sobrenome: {
        type: String,
        require: true
    },
    email: {
        type: String,
        require: true
    },
    idade: {
        type: Number,
        require: true
    },
    pais: {
        type: String,
        // não é obrigatório
    }
})

// Criando a collection

mongoose.model('usuarios', UsuarioSchema);
     //('Nome da collection', nomeDoModel)


// Adicionando usuários no DB

const Diego = mongoose.model('usuarios');

new Diego({
    nome: "Diego",
    sobrenome: "Goes",
    email: "ogoesdiego@gmail.com",
    idade: 26,
    pais: "Brasil"
}).save().then(() => {console.log("Salvo!");}).catch((err) => {console.log(`Houve um erro: ${err}`)});
// salvar no DB         // Notificando sucesso + erros