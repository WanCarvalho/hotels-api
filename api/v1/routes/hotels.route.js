import express from "express";
import HotelsController from "../controllers/hotels.controller.js";
import HotelsValidator from "../validators/hotels.validator.js";
import pagination from "../../middlewares/pagination-sorting.js";

const router = express.Router();

router.get("/", pagination(), HotelsController.getHotels);
router.get("/:id", HotelsController.getHotel);
router.post("/", HotelsValidator.validate("createHotel"), HotelsController.createHotel);
router.delete("/:id", HotelsController.deleteHotel);
router.put("/:id", HotelsController.updateHotel);

export default router;