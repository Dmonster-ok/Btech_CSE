const laptops = require('../data/laptops')
const express = require('express')
const router = express.Router()


router.get('/', (req, res) => {
    const data = {
        status: 'success',
        count: laptops.length,
        data: laptops,
    }
    res.send(data);
})

router.get('/ram/:size', (req, res) => {
    const ram = laptops.filter((laptop) => laptop.LaptopRamSize >= req.params.size);
    const data = {
        status: 'success',
        count: ram.length,
        data: ram,
    }
    res.send(data);
})


module.exports = router