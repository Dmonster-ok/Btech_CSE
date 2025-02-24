let arr = [6,9,3,4,8,1,2]
let max = arr[0];
arr.forEach((val)=> {
    if (max <= val) max = val
})
console.log("max: " + max);
