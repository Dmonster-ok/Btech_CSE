const students = require('../data/students')
const express = require('express')
const router = express.Router()


router.get('/', (req, res) => {
    const data = {
        status: 'success',
        count: students.length,
        data: students,
    }
    res.send(data)
})

router.get('/spi/:spi', (req, res) => {
    const spi = students.filter((student) => student.spi >= req.params.spi)
    const data = {
        status: 'success',
        count: spi.length,
        data: spi,
    }
    res.send(data)
})

router.get('/lang/:lang', (req, res) => {
    const lang = students.filter((student) => student.language.toLowerCase() == req.params.lang && student.name.toUpperCase().startsWith('A'))
    const data = {
        status: 'success',
        count: lang.length,
        data: lang,
    }
    res.send(data)
})

module.exports = router