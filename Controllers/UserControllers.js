const { QueryTypes } = require("sequelize");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcrypt");
const sequelize = require("../Models");

const SECURE = "kunal";

const welcome = (req, res) => {
  res.send("Home page");
};

const addUser = async (req, res) => {
  const { name, email, password } = req.body;
  const salt = await bcrypt.genSalt(10);
  const securePassword = await bcrypt.hash(password, salt);
  try {
    const allUsers = await sequelize.query("select * from users", {
      type: QueryTypes.SELECT,
    });
    const user = allUsers.find((item) => item.email == email);
    if (user == undefined) {
      const userQuery = await sequelize.query(
        "INSERT INTO `users` ( `name`, `email`, `password`) VALUES (?, ?, ?)",
        {
          type: QueryTypes.INSERT,
          replacements: [name, email, securePassword],
        }
      );
      console.log(allUsers.length);
      // const authToken = jwt.sign(userQuery, SECURE);
      // res.status(200).json({ authToken });
      res.send("Done");
    } else {
      //console.log(user.id);
      res.send("Email Already Exists");
    }

    // console.log(user);
  } catch (err) {
    console.log("Error " + err);
  }
};

const loginUser = async (req, res) => {
  const { email, password } = req.body;
  try {
    const user = await sequelize.query(
      "SELECT email, password FROM `users` WHERE email = ?",
      {
        type: QueryTypes.SELECT,
        replacements: [email],
      }
    );

    console.log(user[0]);

    if (user.length === 0) {
      return res.status(404).send("Email Not Found");
    }

    if (user.length === 1) {
      console.log("Data Found");
      const passwordCompare = await bcrypt.compare(password, user[0].password);
      console.log(passwordCompare);
      if (!passwordCompare) {
        return res
          .status(401)
          .json({ auth: "Enter the valid credentailssssss" });
      }
      res.send("Logged In");
    } else {
      res.status(401).json({ auth: "Enter the valid credentails" });
      console.log("Data Not Found");
    }

    // if (user) {
    //   console.log("Found");
    // } else {
    //   console.log("Not Found");
    // }

    // if (user) {
    //   console.log("Email user Found ->" + JSON.stringify(user));
    //   console.log(user);
    //   const temp = "$2b$10$OAQprKIFBe0d46AvvBKBNeX";
    //   console.log(user.password);
    //   console.log(password);
    //   console.log(user.password == temp);

    //   const trimmedPassword = password.trim();
    //   const passwordCompare = await bcrypt.compare(
    //     trimmedPassword,
    //     user.password
    //   );

    //   //   if (!passwordCompare) {
    //   //     return res.status(401).send("Please Enter the valid credentails");
    //   //   }

    //   console.log(passwordCompare);
    //   res.send(passwordCompare);
    // } else {
    //   res.send("Email Not Found");
    // }
  } catch (err) {
    console.log("Error : " + err);
  }
};

module.exports = {
  welcome,
  addUser,
  loginUser,
};
