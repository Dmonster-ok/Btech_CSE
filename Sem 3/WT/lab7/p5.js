function palindrome(n){
    tmp = parseInt(n.toString().split('').reverse().join(''));

    if (n == tmp)
        console.log(n + ' is palindrome');
    else
        console.log(n + ' is not palindrome');
}

palindrome(121)
