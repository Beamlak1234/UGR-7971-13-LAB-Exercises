import 'dart:io';

void main() {
  // Prompt the user for input
  stdout.write('Enter a number: ');

  try {
    // Read the user input
    String? userInput = stdin.readLineSync();

    // Convert the input to an integer
    int number = int.parse(userInput!);

    // Print the converted number
    print('The number is: $number');
  } catch (e) {
    if (e is FormatException) {
      print('Invalid input. Please enter a valid number.');
    } else {
      print('An error occurred: $e');
    }
  }
}