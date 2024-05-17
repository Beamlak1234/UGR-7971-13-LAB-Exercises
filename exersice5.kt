fun main() {
    
    println(sumEvenNumbers(50)) // 650

    printPrimeNumbers(1, 20) // 2, 3, 5, 7, 11, 13, 17, 19

    println(isPalindrome(12321)) // true
    println(isPalindrome(12345)) // false
}

fun sumEvenNumbers(n: Int): Int {
    var sum = 0
    for (i in 1..n) {
        if (i % 2 == 0) {
            sum += i
        }
    }
    return sum
}

fun printPrimeNumbers(start: Int, end: Int) {
    var i = start
    while (i <= end) {
        if (isPrime(i)) {
            println(i)
        }
        i++
    }
}

fun isPrime(n: Int): Boolean {
    if (n <= 1) {
        return false
    }
    var i = 2
    while (i * i <= n) {
        if (n % i == 0) {
            return false
        }
        i++
    }
    return true
}

fun isPalindrome(n: Int): Boolean {
    var original = n
    var reversed = 0
    while (original > 0) {
        val digit = original % 10
        reversed = reversed * 10 + digit
        original /= 10
    }
    return n == reversed
}