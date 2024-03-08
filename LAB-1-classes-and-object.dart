class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

void main() {
  // Create a person object
  Person person1 = Person("John Doe", 25, "123 Main St");

  // Access and modify attributes
  print("Original Information:");
  print("Name: ${person1.name}");
  print("Age: ${person1.age}");
  print("Address: ${person1.address}");

  person1.age = 30;
  person1.address = "456 Elm St";

  print("\nModified Information:");
  print("Name: ${person1.name}");
  print("Age: ${person1.age}");
  print("Address: ${person1.address}");
}