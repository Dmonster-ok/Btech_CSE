const Student = require('../models/Student');
const express = require('express');
const router = express.Router();

//get all
router.get('/',async (req, res) => {
    const students = await Student.find({});
    res.send(students);
});

//get by id
router.get('/:id', async (req, res) => {
    const student = await Student.findById(req.params.id);
    res.send(student);
});

//insert(create)
router.post('/', async (req, res) => {
    const student = new Student({
        name: req.body.name,
        language: req.body.language,
        bio: req.body.bio,
        spi: req.body.spi,
    })

    const data = await student.save();
    res.send(data)
})

router.post('/many', async (req, res) =>{
    const students = new Students(
        ...req.body
    )

    const data = await students.save()
    res.send(data)
})

//update
router.patch('/:id', async (req, res) => {
    const student = await Student.findByIdAndUpdate(id, {
        ...req.body
    })

    const data = await student.save()
    res.send(data)
})

//delete
router.delete('/:id', async (req, res) => {
    const data = await Student.findOneAndDelete({ _id: req.params.id })
    res.send(data)
})

module.exports = router