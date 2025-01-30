const Faculty = require('../models/Faculty');
const express = require('express');
const router = express.Router();

router.get('/',async (req, res) => {
    const faculties = await Faculty.find({});
    res.send(faculties);
});

//get by id
router.get('/:id', async (req, res) => {
    const faculty = await Faculty.findById(req.params.id);
    res.send(faculty);
});

//insert(create)
router.post('/', async (req, res) => {
    const faculty = new Faculty({
        createdAt: new Date.now(),
        FacultyName: req.body.FacultyName,
        FacultyImage: req.body.FacultyImage,
        FacultyInitial: req.body.FacultyInitial,
        FacultyDescription: req.body.FacultyDescription,
        FacultyDateOfBirth: req.body.FacultyDateOfBirth
    })

    const data = await faculty.save();
    res.send(data)
})

//update
router.patch('/:id', async (req, res) => {
    const faculty = await Faculty.findByIdAndUpdate(id, {
        ...req.body
    })

    const data = await faculty.save()
    res.send(data)
})

//delete
router.delete('/:id', async (req, res) => {
    const data = await Faculty.findOneAndDelete({ _id: req.params.id })
    res.send(data)
})

module.exports = router