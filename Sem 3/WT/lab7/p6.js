function armstrong(n) {
    tmp = n.toString();
    let len = tmp.length;
    let sum = 0;
    for (val in tmp) {
        sum += parseInt(tmp[val]) ** len;
    }
    if (sum == n) {
        console.log(n + " is an Armstrong");
    }
    else {
        console.log(n + " is not an Armstrong");
    }
}

armstrong(153)