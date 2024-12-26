const fs = require("fs");

const file = fs.readFileSync("lab3/p3.txt", "utf8");

console.log(file.split(/[\n\r\s]+/).filter((word) => word.length > 0).length);