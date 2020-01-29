import express from "express";
import bodyParser from "body-parser";
import router from "./router/index";

const app = express();
const port = parseInt(process.env.PORT, 10) || 3000;

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

if (!module.parent) {
  app.listen(port, () => {
    console.log(`Listening on port ${port}`);
  });
}

module.exports = app;
