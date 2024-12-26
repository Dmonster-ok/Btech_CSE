
const laptops = require('./data/laptops');
const todos = require('./data/todos');
const express = require('express');

const app = express();

app.all('/', (req, res) => {
    res.send(`<ul><h3>Routs</h3> <li><a href="/students">Students</a></li> <li><a href="/faculties">Faculties</a></li> <li><a href="/laptops">Laptops</a></li> <li><a href="/todos">Todos</a></li> </ul>`);
})

app.use('/students', require('./src/students'));
app.use('/faculties', require('./src/faculties'));
app.use('/laptops', require('./src/laptops'));
app.use('/todos', require('./src/todos'));

app.listen(3000, () => {
    console.log('Server is running on port 3000')
})