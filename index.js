// Modules
require("dotenv").config();

const express = require("express");
const router = require("./router");

const PORT = process.env.PORT || 3000;

// Configuration de l'app
const app = express();

// VIEWS REACT A CONFIGURER

app.use(express.urlencoded({extended: true}));
app.use(express.json());

app.use(router);

// Lancement du serveur
app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`);
});