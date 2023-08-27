const express = require("express");
const app = express();
const PORT = 5000;

app.get("/", () => {
  res.send("app");
});

app.listen(PORT, () => {
  console.log(`running sv on PORT ${PORT}`);
});
