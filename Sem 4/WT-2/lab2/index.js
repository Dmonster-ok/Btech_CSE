//path
const path = require('path')

const p = 'D:\\Dhruv\\DU\\Sem 4\\WT-2\\lab-2\\img.png'
const p2 = 'D:\\Dhruv\\DU\\Sem 4\\WT-2\\lab-2\\'

console.log('join: ',path.join(p,'img'))
console.log('dirname: ',path.dirname(p))
console.log('basename: ',path.basename(p,'.png'))
console.log('extname: ',path.extname(p))

//fs
const fs = require('fs')

fs.stat(p,(err,data)=>{
    console.log(data);
})
fs.writeFile('p.txt','Hellow World',(err)=> err?console.log(err):null)
fs.readFile('untitled.blend',(err,data)=> err?console.log(err):console.log(data.toString('utf-8')))
fs.rename(p,p2+'card.png',((err)=> err?console.log(err):null))
fs.readFile('card.png',(err,data)=> err?console.log(err):console.log(data.toString('utf-8')))
fs.unlink(p2+'p.txt',(err)=> err?console.log(err):console.log(p2+'p.txt deleted'))
