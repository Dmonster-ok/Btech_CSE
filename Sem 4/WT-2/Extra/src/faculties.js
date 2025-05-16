const faculties = require('../data/faculties')
const express = require('express')
const router = express.Router()

router.get('/', (req, res) => {
    const data = {
        status: 'success',
        count: faculties.length,
        data: faculties,
    }
    res.send(data);
})

router.get('/name/:char', (req, res) => {
    const char = faculties.filter((faculty) => faculty.FacultyName.toLowerCase().startsWith(req.params.char));
    const data = {
        status: 'success',
        count: char.length,
        data: char,
    }
    res.send(data);
})

router.get('/year/:year', (req, res) => {
    const year = faculties.filter((faculty) => {
        const date = new Date(faculty.FacultyDateOfBirth);
        return date.getFullYear() >= req.params.year
    });
    const data = {
        status: 'success',
        count: year.length,
        data: year,
    }
    res.send(data);
})

module.exports = router