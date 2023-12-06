const router = require("express").Router();
const cw = require("./services/controllerWrapper")
const { isAuthed, isAdmin } = require("./services/authMiddleware");

// Accueil
router.get("/", cw(maincontroller.renderHomePage));
