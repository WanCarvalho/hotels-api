import express from "express";

const router = express.Router();

router.use("/hotels", function (req, res, next) {
    res.send("Hotels-api v2");
});

export default router;