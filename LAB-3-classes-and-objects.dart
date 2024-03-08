class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Create a rectangle object
  Rectangle rectangle1 = Rectangle(4, 6);

  // Calculate area and perimeter
  double area = rectangle1.calculateArea();
  double perimeter = rectangle1.calculatePerimeter();

  print("Rectangle 1:");
  print("Width: ${rectangle1.width}");
  print("Height: ${rectangle1.height}");
  print("Area: $area");
  print("Perimeter: $perimeter");
}
