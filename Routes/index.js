const express = require("express");
const UserController = require("../Controllers/UserControllers");

const router = express();

router.get("/", UserController.welcome);
router.post("/add", UserController.addUser);
router.post("/login", UserController.loginUser);

module.exports = router;
