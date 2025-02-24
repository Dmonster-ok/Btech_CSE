function gcd(a,b) {
    let gcd
    for(let i = 0; i < Math.min(a,b); i++){
        if (a%i ==0 && b%i == 0) {
            gcd = i
        }
    }
    return gcd
}

console.log(gcd(6,24));
