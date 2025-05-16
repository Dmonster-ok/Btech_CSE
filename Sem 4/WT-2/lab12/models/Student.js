const mongoose = require('mongoose');

const studentSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  language : {
    type: String,
    required: true,
  },
  bio: {
    type: String,
  },
  spi: {
    type: Number,
    required: true,
  },
});

const Student = mongoose.model('Student', studentSchema);

module.exports = Student;
