import EntryHandler from "../handler/entryHandler";

class EntryController {
  constructor() {
    this._entry = new EntryHandler();
  }

  create(req, res) {
    const result = this._entry.addEntry(req.body.title, res.body.content);
    res.status(200).json({
      status: "success",
      data: result
    });
  }

  getById(req, res) {
    const { id } = req.params;
    const result = this._entry.findEntry(id);
    res.status(200).json({
      status: "success",
      data: result
    });
  }

  getAll(req, res) {
    const result = this._entry.getAllEntry();
    res.status(200).json({
      status: "success",
      data: result
    });
  }

  update(req, res) {
    const { id } = req.params;
    const { body } = req;
    const result = this._entry.updateEntry(id, body);
    if (result !== null) {
      res.status(200).json({
        status: "success",
        data: result
      });
    } else {
      res.status(404).json({
        status: "error",
        message: "not found",
        errors: ["entry doesn't exist"]
      });
    }
  }

  delete(req, res) {
    const { id } = req.params;
    const result = this._entry.deleteEntry(id);
    if (result !== null && result === undefined) {
      res.status(200).json({
        status: "success",
        data: {}
      });
    } else {
      res.status(404).json({
        status: "error",
        message: "unable to delete",
        errors: ["entry doesn't exist"]
      });
    }
  }
}

module.exports = EntryController;
