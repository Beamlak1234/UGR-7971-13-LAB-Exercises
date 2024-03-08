class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  // Create a product object
  Product product1 = Product("Apple", 0.5, 10);

  // Calculate total cost
  double totalCost = product1.calculateTotalCost();

  print("Product 1:");
  print("Name: ${product1.name}");
  print("Price: \$${product1.price}");
  print("Quantity: ${product1.quantity}");
  print("Total Cost: \$${totalCost}");
}