function controllerWrapper(mdwFunction){
    return async function (req, res, next){
        try {
            await mdwFunction(req, res, next);
        } catch(error) {
            console.error(error);
            res.status(500).json({error: "Erreur du serveur. Merci de réessayer plus tard."})
        };
    };
};

module.exports = controllerWrapper;