fun main() {
    // Determine the season
    println(determineSeason(3, 15)) // Spring
    println(determineSeason(6, 21)) // Summer
    println(determineSeason(9, 23)) // Autumn
    println(determineSeason(12, 15)) // Winter

    // Find the largest among three numbers
    println(findLargestNumber(10, 20, 30)) // 30
    println(findLargestNumber(50, 20, 30)) // 50
    println(findLargestNumber(10, 50, 30)) // 50
    println(findLargestNumber(10, 20, 50)) // 50
}

fun determineSeason(month: Int, day: Int): String {
    return when (month) {
        3, 4, 5 -> "Spring"
        6, 7, 8 -> "Summer"
        9, 10, 11 -> "Autumn"
        12, 1, 2 -> "Winter"
        else -> "Invalid month"
    }
}


fun findLargestNumber(a: Int, b: Int, c: Int): Int {
    return if (a >= b && a >= c) {
        a
    } else if (b >= a && b >= c) {
        b
    } else {
        c
    }
}