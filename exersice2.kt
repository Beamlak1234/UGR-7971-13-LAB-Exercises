fun main() {
  
    println(determineTriangleType(4.0, 4.0, 4.0)) 
    println(determineTriangleType(4.0, 4.0, 3.0)) 
    println(determineTriangleType(4.0, 3.0, 5.0)) 

    println(calculateTotalSalary(40.0, 20.0)) 
    println(calculateTotalSalary(45.0, 20.0)) 
}


fun determineTriangleType(a: Double, b: Double, c: Double): String {
    return when {
        a == b && b == c -> "Equilateral"
        a == b || b == c || a == c -> "Isosceles"
        else -> "Scalene"
    }
}

fun calculateTotalSalary(hoursWorked: Double, hourlyRate: Double): Double {
    val regularHours = 40.0
    val overtimeRate = 1.5

    val regularPay = regularHours * hourlyRate
    val overtimePay = max(0.0, hoursWorked - regularHours) * hourlyRate * overtimeRate

    return regularPay + overtimePay
}