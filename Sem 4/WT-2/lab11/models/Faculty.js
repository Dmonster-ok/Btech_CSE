const mongoose = require('mongoose');

const facultySchema = new mongoose.Schema({
  createdAt: {
    type: Date,
  },
  FacultyName: {
    type: String,
    required: true,
  },
  FacultyImage: {
    type: String,
    required: true,
  },
  FacultyInitial: {
    type: String,
    required: true,
  },
  FacultyDescription: {
    type: String,
    required: true,
  },
  FacultyDateOfBirth: {
    type: Date,
    required: true,
  },
});

const Faculty = mongoose.model('Faculty', facultySchema);

module.exports = Faculty;
