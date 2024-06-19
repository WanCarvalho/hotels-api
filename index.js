import "./env.js";
import express from "express";
import cors from "cors";
import RouterV1 from "./api/v1/router.js";
import RouterV2 from "./api/v2/router.js";

const app = express();
app.use(express.json());
app.use(cors());
app.use(function (req, res, next) {
    res.contentType("application/json");
    next();
});

app.use("/api/v1", RouterV1);
app.use("/api/v2", RouterV2);

app.listen(3000, () => console.log("Hotels API started."));