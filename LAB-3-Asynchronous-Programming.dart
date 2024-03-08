import 'dart:async';

class Database {
  static Future<List<String>> fetchData() async {
    // Simulate a delay of 2 seconds
    await Future.delayed(Duration(seconds: 2));

    // Simulated data
    List<String> data = ['John', 'Jane', 'Alice', 'Bob'];

    return data;
  }
}

void main() {
  print('Loading data...');

  Database.fetchData().then((data) {
    print('Data loaded: $data');
  });

  print('Program execution continues...');
}