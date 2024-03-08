import 'dart:math';

void main() {
  // Generate a list of random numbers
  List<int> randomNumbers = generateRandomNumbers(20);

  // Create a Set to store unique numbers
  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);

  // Print the unique numbers
  print('Unique numbers:');
  uniqueNumbers.forEach((number) => print(number));
}

List<int> generateRandomNumbers(int count) {
  Random random = Random();
  List<int> numbers = [];

  for (int i = 0; i < count; i++) {
    numbers.add(random.nextInt(100));
  }

  return numbers;
}
