var colors = require('colors');

n = 50
sum = 0
for (let i = 1; i <= n; i++) {
    sum += i * i
}
console.log("1: ", sum);

l = []
for (let i = 1; i <= n; i += 3) {
    l.push(i);
}

console.log("2: ", l);

sum = 0
for (let i = 1; i < n; i++) {
    if (i % 2 == 0) {
        sum -= i
    } else {
        sum += i
    }
}

console.log("3: ", sum);

n = 50
sum = 1
for (i = 0; i < n; i++) {
    sum *= n - i
}

console.log("4: ", sum);

l = []
for (i = 1; i < n; i++) {
    if (n % i == 0) {
        l.push(i)
    }
}

console.log("5: ", l);

n = 6
sum = 0
for (i = 1; i < n; i++) {
    if (n % i == 0) {
        sum += i
    }
}

console.log("6: ",n,(sum == n)?"Perfect num":"Not Perfect num");

n = 13
flag = true
for (i = 2; i < n; i++) {
    if (n%i==0) {
        flag = false
        break
    }
}

console.log("7: ",n,(flag)?"Prime":"Not Prime");

n = 10201
flag = parseInt(n.toString().split('').reverse().join('')) == n

console.log("7: ",n,(flag)?"Palindrome":"Not Palindrome");

n = 153
sum = 0
flag = n.toString().split('').map(a =>parseInt(a))
console.log(flag,sum);
