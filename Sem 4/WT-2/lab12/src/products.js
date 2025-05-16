const Product = require('../models/Product');
const express = require('express');
const router = express.Router();

//get all
router.get('/',async (req, res) => {
    const products = await Product.find({});
    res.send(products);
});

//get by id
router.get('/:id', async (req, res) => {
    const product = await Product.findById(req.params.id);
    res.send(product);
});

//insert(create)
router.post('/', async (req, res) => {
    const product = new Product({
        createdAt: Date.now(),
        LaptopName: req.body.LaptopName,
        LaptopImage: req.body.LaptopImage,
        LaptopPrice: req.body.LaptopPrice,
        LaptopCompany: req.body.LaptopCompany,
        LaptopRamSize: req.body.LaptopRamSize,
        LaptopSSDSize: req.body.LaptopSSDSize,
    })

    const data = await product.save();
    res.send(data)
})

//update
router.patch('/:id', async (req, res) => {
    const product = await Product.findByIdAndUpdate(id, {
        ...req.body
    })

    const data = await product.save()
    res.send(data)
})

//delete
router.delete('/:id', async (req, res) => {
    const data = await Product.findOneAndDelete({ _id: req.params.id })
    res.send(data)
})

module.exports = router