const fs = require("fs");

const file = fs.readFileSync("lab3/p5.txt", "utf-8");

data = file.split("\n").map((s) => {
  const data = s.trim().split(",");

  return {
    id: parseInt(data[0]),
    name: data[1],
    enroll: data[2],
    mobile: data[3],
    dept: data[4],
    spi: parseFloat(data[5]),
  };
});

console.log(data);
