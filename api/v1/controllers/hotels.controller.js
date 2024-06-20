import HotelsService from "../services/hotels.services.js";
import { validationResult } from "express-validator";
import { cache } from "../../middlewares/cache.js";

async function getHotels(req, res, next) {
    try {
        const results = await HotelsService.getHotels(req.pagination);
        cache.set(`getHotels - ${JSON.stringify(req.pagination)}`, results);

        res.status(200);
        res.send(results);

        logger.info("GET /hotels");
    } catch (err) {
        next(err);
    }
}

async function getHotel(req, res, next) {
    try {
        const hotel = await HotelsService.getHotel(req.params.id);
        res.status(200);
        res.send(hotel);

        logger.info("GET /hotels/:id");
    } catch (err) {
        next(err);
    }
}

async function createHotel(req, res, next) {
    try {
        const validationErrors = validationResult(req);

        if (!validationErrors.isEmpty()) {
            const error = new Error(
                "Missing fields or invalid data " +
                "Error Details: " +
                JSON.stringify(validationErrors.array(), null, 2)
            );

            error.statusCode = 400;
            throw error;
        }

        let hotel = req.body;

        hotel = await HotelsService.createHotel(hotel);
        res.status(201).send(hotel);

        logger.info(`POST /hotels/ - ${JSON.stringify(hotel)}`);
    } catch (err) {
        next(err);
    }
}

async function deleteHotel(req, res, next) {
    try {
        await HotelsService.deleteHotel(req.params.id);
        res.status(204).end();

        logger.info("DELETE /hotels/:id");
    } catch (err) {
        next(err);
    }
}

async function updateHotel(req, res, next) {
    try {
        const validationErrors = validationResult(req);

        if (!validationErrors.isEmpty()) {
            const error = new Error(
                "Missing fields or invalid data " +
                "Error Details: " +
                JSON.stringify(validationErrors.array(), null, 2)
            );

            error.statusCode = 400;
            throw error;
        }

        let hotel = req.body;
        hotel.hotelId = req.params.id;

        hotel = await HotelsService.updateHotel(hotel);
        res.status(204).send(hotel);

        logger.info(`POST /hotels/ - ${JSON.stringify(hotel)}`);
    } catch (err) {
        throw err;
    }
}

export default {
    getHotels,
    createHotel,
    getHotel,
    deleteHotel,
    updateHotel,
}