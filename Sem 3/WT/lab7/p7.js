function maxThree(a, b, c) {
    return (a > b && a > c) ? a : (b > c) ? b : c
}
console.log(maxThree(1, 5, 8));
