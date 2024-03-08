import 'dart:io';

void main() {
  const int speedOfLight = 299792458; // meters per second
  double distance = 0.0;
  
  // Get user input for distance
  print('Enter the distance in meters: ');
 String input = stdin.readLineSync()!;
distance = double.parse(input);
  
  // Calculate the time
  double time = distance / speedOfLight;
  print('Time taken for light to travel $distance meters is $time seconds.');
}
