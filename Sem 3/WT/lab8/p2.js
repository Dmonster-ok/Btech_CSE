function rangPrime(n) {
    let f = true;
    for (let j = 1; j <= n; j++) {
        for (let i = 2; i < j; i++) {
            if (j % i == 0) {
                f = false;
                break;
            }
            f = true;
        }
        if (f)
            console.log(j);
    }
}

rangPrime(5)