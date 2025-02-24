let lim = 10;

for (let i = 0; i < lim; i++) {
    console.log(fibonacci(i));
}

function fibonacci(n) {
    if (n <= 1) {
        return n;
    }
    else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}
