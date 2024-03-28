const express = require("express");
const bodyParser = require("body-parser");
const app = express();

app.use(bodyParser.json());

app.use("/", require("./Routes"));

app.listen(5000, (req, res) => {
  console.log("Listening on 5000");
});
