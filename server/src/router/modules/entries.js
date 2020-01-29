import express from "express";
import EntryController from "../../controller/entryController";

const router = express.Router();
const entry = newEntryController();

router.get("/", (req, res) => {
  entry.getAll(req, res);
});

router.post("/", (req, res) => {
  entry.create(req, res);
});

router.get("/:id", (req, res) => {
  entry.getById(req, res);
});

router.get("/:id", (req, res) => {
  entry.getById(req, res);
});

router.put("/:id", (req, res) => {
  entry.update(req, res);
});

router.delete("/:id", (req, res) => {
  entry.delete(req, res);
});

module.exports = router;
