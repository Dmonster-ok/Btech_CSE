const fs = require("fs");

fs.copyFile("lab3/text.txt", "lab3/text-2.txt", (err) => {
  if (err) {
    console.error(err);
    return;
  }
  console.log("File copied successfully!");
});
