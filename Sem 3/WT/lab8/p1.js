function factors(n) {
    let res = ''
    for(i = 1; i <= n; i++)
        if (n % i == 0 )
                res += `${i} `

    console.log(n,res);
}

factors(10)