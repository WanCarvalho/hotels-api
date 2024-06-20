import "./env.js";
import express from "express";
import cors from "cors";
import logger from "./api/config/logger.js";
import RouterV1 from "./api/v1/router.js";
import RouterV2 from "./api/v2/router.js";

global.logger = logger;

const app = express();
app.use(express.json());
app.use(cors());
app.use(function (req, res, next) {
    res.contentType("application/json");
    next();
});

app.use("/api/v1", RouterV1);
app.use("/api/v2", RouterV2);

// middleware para tratamento de erros precisa ser colocado como último da cadeia de requisições
app.use((err, req, res, next) => {
    logger.error(
        `${err.statusCode} - ${err.message} - ${req.method} ${req.baseUrl}`
    );
    
    res
        .status(err.statusCode || 500)
        .send({ error: err.message || "Something went wrong" });
});

app.listen(3000, () => console.log("Hotels API started."));