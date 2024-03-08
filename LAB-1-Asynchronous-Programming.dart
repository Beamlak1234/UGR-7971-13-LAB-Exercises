import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  // Simulate network delay
  await Future.delayed(Duration(seconds: 2));

  // Generate a random quote
  List<String> quotes = [
    "The greatest pleasure in life is doing what people say you cannot do.",
"Success is not the absence of failure; it's the persistence through failure.",
"Happiness is not a destination, but a state of mind we create along the way.",
"The beauty of life lies in the unpredictable moments that take our breath away.",
"Sometimes the smallest step in the right direction ends up being the biggest step of your life."
  ];

  Random random = Random();
  int randomIndex = random.nextInt(quotes.length);
  String quote = quotes[randomIndex];

  return quote;
}

void main() async {
  print("Fetching random quote...");

  String quote = await fetchRandomQuote();

  print("Random Quote: $quote");
}