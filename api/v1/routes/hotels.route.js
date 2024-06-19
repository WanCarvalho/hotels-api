import express from "express";
import HotelsController from "../controllers/hotels.controller.js";

const router = express.Router();

router.get("/", HotelsController.getHotels);
router.get("/:id", HotelsController.getHotel);
router.post("/", HotelsController.createHotel);
router.delete("/:id", HotelsController.deleteHotel);
router.put("/:id", HotelsController.updateHotel);

export default router;