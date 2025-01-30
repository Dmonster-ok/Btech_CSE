const mongoose = require('mongoose');

const productSchema = new mongoose.Schema({
    createdAt: {
        type: Date,
    },
    LaptopName: {
        type: String,
        required: true,
    },
    LaptopImage: {
        type: String,
        required: true,
    },
    LaptopPrice: {
        type: Number,
        required: true,
    },
    LaptopCompany: {
        type: String,
        required: true,
    },
    LaptopRamSize: {
        type: Number,
        required: true,
    },
    LaptopSSDSize: {
        type: Number,
        required: true,
    }
});

const Product = mongoose.model('Product', productSchema);

module.exports = Product;
