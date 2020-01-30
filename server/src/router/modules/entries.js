import express from "express";
import validate from "express-validation";
import EntryController from "../../controller/entryController";
import Validation from "../../middleware/validation/index";

const router = express.Router();
const entry = newEntryController();

router.get("/", (req, res) => {
  entry.getAll(req, res);
});

router.post("/", validate(Validation.Entry.create), (req, res) => {
  entry.create(req, res);
});

router.get("/:id", validate(Validation.Entry.getById), (req, res) => {
  entry.getById(req, res);
});

router.put("/:id", validate(Validation.Entry.update), (req, res) => {
  entry.update(req, res);
});

router.delete("/:id", validate(Validation.Entry.delete), (req, res) => {
  entry.delete(req, res);
});

module.exports = router;
