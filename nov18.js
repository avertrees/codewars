// https://www.codewars.com/kata/559a28007caad2ac4e000083

function perimeter(n) {
    let fib = []
    fib[0] = 0
    fib[1] = 1
    for (i = 2; i <= n + 1; i++) {
        fib[i] = fib[i - 2] + fib[i - 1];
    }

    return 4 * fib.reduce(getSum, 0)
}

function getSum(total, num) {
    return total + Math.round(num);
}