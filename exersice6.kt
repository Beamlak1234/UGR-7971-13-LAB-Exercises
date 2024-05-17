class Rectangle(var length: Double, var width: Double) {
    fun getPerimeter(): Double {
        return 2 * (length + width)
    }

    fun getArea(): Double {
        return length * width
    }
}

class Triangle(var side1: Double, var side2: Double, var side3: Double) {
    fun isEquilateral(): Boolean {
        return side1 == side2 && side2 == side3
    }

    fun isIsosceles(): Boolean {
        return side1 == side2 || side2 == side3 || side1 == side3
    }

    fun isScalene(): Boolean {
        return side1 != side2 && side2 != side3 && side1 != side3
    }
}

class ShoppingCart {
    private val items = mutableListOf<Item>()

    fun addItem(item: Item) {
        items.add(item)
    }

    fun removeItem(item: Item) {
        items.remove(item)
    }

    fun getTotalPrice(): Double {
        return items.sumOf { it.price }
    }
}

data class Item(val name: String, val price: Double)

fun main() {
    // Rectangle
    val rectangle = Rectangle(5.0, 3.0)
    println("Rectangle Perimeter: ${rectangle.getPerimeter()}")
    println("Rectangle Area: ${rectangle.getArea()}")

    // Triangle
    val triangle1 = Triangle(3.0, 4.0, 5.0)
    val triangle2 = Triangle(4.0, 4.0, 4.0)
    val triangle3 = Triangle(3.0, 4.0, 6.0)
    println("Triangle 1 is Equilateral: ${triangle1.isEquilateral()}")
    println("Triangle 2 is Isosceles: ${triangle2.isIsosceles()}")
    println("Triangle 3 is Scalene: ${triangle3.isScalene()}")

    // ShoppingCart
    val cart = ShoppingCart()
    cart.addItem(Item("Apple", 0.5))
    cart.addItem(Item("Banana", 0.25))
    cart.addItem(Item("Orange", 0.75))
    cart.removeItem(cart.items[1])
    println("Total Price: ${cart.getTotalPrice()}")
}