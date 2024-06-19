import express from "express";
import hotelsRouter from "./routes/hotels.route.js";

const router = express.Router();

router.use("/hotels", hotelsRouter);

export default router;