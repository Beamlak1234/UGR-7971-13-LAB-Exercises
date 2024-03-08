import 'dart:core';
import 'dart:core';

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class CartItem {
  Product product;
  int quantity;

  CartItem(this.product, this.quantity);
}

void main() {
  List<CartItem> cart = [];

  // Add items to the cart
  addToCart(cart, Product('Apple', 0.5), 2);
  addToCart(cart, Product('Banana', 0.3), 3);
  addToCart(cart, Product('Orange', 0.4), 4);

  // Print the cart
  print('Shopping Cart:');
  printCart(cart);

  // Calculate the total price
  double totalPrice = calculateTotalPrice(cart);
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');

  // Remove an item from the cart
  removeFromCart(cart, Product('Banana', 0.3));

  // Print the updated cart
  print('Updated Shopping Cart:');
  printCart(cart);

  // Calculate the total price again
  totalPrice = calculateTotalPrice(cart);
  print('Updated Total Price: \$${totalPrice.toStringAsFixed(2)}');
}

void addToCart(List<CartItem> cart, Product product, int quantity) {
  CartItem existingItem = cart.firstWhere((item) => item.product.name == product.name, orElse: () => Null);

  if (existingItem != Null) {
    existingItem.quantity += quantity;
  } else {
    cart.add(CartItem(product, quantity));
  }
}

Null get Null => null;

void removeFromCart(List<CartItem> cart, Product product) {
  cart.removeWhere((item) => item.product.name == product.name);
}

double calculateTotalPrice(List<CartItem> cart) {
  double total = 0.0;

  for (var item in cart) {
    total += item.product.price * item.quantity;
  }

  return total;
}

void printCart(List<CartItem> cart) {
  for (var item in cart) {
    print('${item.product.name} - Quantity: ${item.quantity} - Price: \$${item.product.price.toStringAsFixed(2)}');
  }
}