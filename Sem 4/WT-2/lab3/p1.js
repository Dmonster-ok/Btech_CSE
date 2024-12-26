// a js file in node js to store student details [ name , rollNo , enrollment no , mob no , SPI ] in txt file

const fs = require("fs");

let student = {
  id: 1,
  name: "John",
  enrollmentNo: 8656,
  mobNo: 1234567890,
  SPI: 9.4,
};

fs.writeFileSync("lab3/student.txt", JSON.stringify(student));

const data = fs.readFileSync("lab3/student.txt", "utf-8");

console.log(data);
