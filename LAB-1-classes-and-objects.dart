class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

void main() {
  // Create a person object
  Person person1 = Person("chal", 65, "123 Main St");

  // Access and modify attributes
  print("Original Information:");
  print("Name: ${person1.name}");
  print("Age: ${person1.age}");
  print("Address: ${person1.address}");

  person1.age = 30;
  person1.address = "kara werda 2";

  print("\nModified Information:");
  print("Name: ${person1.name}");
  print("Age: ${person1.age}");
  print("Address: ${person1.address}");
}
