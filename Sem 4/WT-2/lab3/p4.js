const fs = require("fs");
const data = fs.readFileSync("lab3/p4.txt", "utf-8");
let count = 0;
vowels = ["a", "e", "i", "o", "u"];

for (let i = 0; i < data.length; i++) {
  if (vowels.includes(data[i])) {
    count++;
  }
}

console.log(count);