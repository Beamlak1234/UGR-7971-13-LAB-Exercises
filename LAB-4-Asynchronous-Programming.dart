import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  static const String apiKey = 'YOUR_API_KEY';
  static const String apiUrl = 'https://api.example.com/weather';

  static Future<Map<String, dynamic>> fetchWeatherData() async {
    String url = '$apiUrl?apiKey=$apiKey';

    // Send an HTTP GET request to the API
    var response = await http.get(Uri.parse(url));

    // Check if the request was successful (status code 200)
    if (response.statusCode == 200) {
      // Parse the response body as JSON
      var data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Failed to fetch weather data. Status code: ${response.statusCode}');
    }
  }
}

void main() {
  print('Fetching weather data...');

  WeatherApiClient.fetchWeatherData().then((data) {
    // Extract temperature and weather conditions from the data
    double temperature = data['main']['temp'];
    String conditions = data['weather'][0]['description'];

    print('Temperature: $temperature');
    print('Conditions: $conditions');
  }).catchError((error) {
    print('Error: $error');
  });

  print('Program execution continues...');
}
