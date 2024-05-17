fun main() {
    
    val numbers1 = intArrayOf(5, 2, 8, 1, 9)
    println(sortArray(numbers1).contentToString()) // [1, 2, 5, 8, 9]

    println(calculateFactorial(5)) // 120
    println(calculateFactorial(0)) // 1

    println(hasUniqueChars("hello")) // false
    println(hasUniqueChars("world")) // true
}

fun sortArray(arr: IntArray): IntArray {
    return arr.sortedArray()
}

fun calculateFactorial(n: Int): Long {
    return if (n == 0) {
        1
    } else {
        n * calculateFactorial(n - 1)
    }
}


fun hasUniqueChars(str: String): Boolean {
    val charSet = HashSet<Char>()
    for (char in str) {
        if (charSet.contains(char)) {
            return false
        }
        charSet.add(char)
    }
    return true
}