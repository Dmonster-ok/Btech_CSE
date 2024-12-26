let arr = [1,2,3,4]
console.log(arr)
arr.push(5)
arr.push(6)
console.log(arr,"// push 5, 6")
arr.pop()
console.log(arr,"// pop")
console.log(arr.shift())
console.log(arr.unshift(0))
console.log(arr,"// shift then unshift(0)")
console.log(arr.slice(1,4))
arr.sort((a,b)=> b-a)
console.log(arr);
console.log(arr.splice(1,4))