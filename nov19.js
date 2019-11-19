https://www.codewars.com/kata/count-the-divisible-numbers/train/javascript
function divisibleCount(x, y, k) {
    //code me
    let count = 0
    for (let i = x; i <= y; i++) {
        if (i % k == 0) {
            count++
        }
    }

    return count
}

// #ruby

// def divisible_count(x, y, k)
// # your code here

//     (x..y).to_a.select { | num |
//         num % k == 0
// }.count

// end