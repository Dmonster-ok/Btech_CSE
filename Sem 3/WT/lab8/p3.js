n = 5

let res = ''
for (let i = 0; i < n; i++) {
    for (let j = 0; j < i + 1; j++) {
        res += '* '
    }
    res += '\n'
}//p1
console.log(res);


res = ''
for (let i = n - 1; i >= 0; i--) {
    for (let j = n - 1; j > i; j--) {
        res += '  '
    }
    for (let j = 0; j <= i; j++) {
        res += '* '
    }
    res += '\n'
}//p2
console.log(res);

res = ''
for (let i = 0; i < n; i++) {
    for (let j = n - 1; j > i; j--) {
        res += '  '
    }
    for (let j = 0; j <= i; j++) {
        res += '* '
    }
    res += '\n'
}//p3
console.log(res);

res = ''
for (let i = n; i > 0; i--) {
    for (let j = 0; j < i; j++) {
        res += '* '
    }
    res += '\n'
}//p4
console.log(res);

res = ''
let c = 1
for (let i = 0; i < n; i++) {
    for (let j = 0; j < i + 1; j++) {
        res += `${c++} `
    }
    res += '\n'
}//p5
console.log(res);

res = ''
for (let i = 0; i < n; i++) {
    for (let j = n - 1; j > i; j--) {
        res += ' '
    }
    for (let j = 0; j < i + 1; j++) {
        res += '* '
    }
    res += '\n'
}//p6
console.log(res);

res = ''
for (let i = 0; i < n; i++) {
    for (let j = 0; j < n; j++) {
        if (i == 0 || j == 0 || i == n - 1 || j == n - 1) {
            res += '* '
        } else {
            res += '  '
        }
    }
    res += '\n'
}//p7
console.log(res);

res = ''
for (let i = n; i > 0; i--) {
    for (let j = n; j > i; j--) {
        res += ' '
    }
    for (let j = 0; j < i; j++) {
        res += '* '
    }
    res += '\n'
}//p8
console.log(res);

