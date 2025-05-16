const todos = require('../data/todos')
const express = require('express')
const router = express.Router()


router.get('/', (req, res) => {
    const data = {
        status: 'success',
        count: todos.length,
        data: todos,
    }
    res.send(data);
})

router.get('/stats/:stats', (req, res) => {
    const completed = todos.filter((todo) => todo.completed.toString() == req.params.stats);
    const data = {
        status: 'success',
        count: completed.length,
        data: completed,
    }
    res.send(data);
})

router.get('/stats/:stats/:id', (req, res) => {
    const completed = todos.filter((todo) => todo.completed.toString() == req.params.stats && todo.userId == req.params.id);
    const data = {
        status: 'success',
        count: completed.length,
        data: completed,
    }
    res.send(data);
})

router.get('/rate/:id', (req, res) => {
    const completed = todos.filter((todo) => todo.userId == req.params.id && todo.completed == true);
    const data = {
        status: 'success',
        count: completed.length,
        percentage: (completed.length / todos.length) * 100,
        data: completed,
    }
    res.send(data);
})


module.exports = router