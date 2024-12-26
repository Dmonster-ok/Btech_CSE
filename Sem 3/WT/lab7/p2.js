let num = 9;
let flag = true;

for (let i = 2; i < num; i++) {
    if (num % i == 0 ) {
        console.log('Not Prime');
        return;
    }
}
console.log('Prime');

