double divideNumbers(double dividend, double divisor) {
  try {
    return dividend / divisor;
  } catch (e) {
    if (e is DivisionByZeroError) {
      print('Error: Division by zero is not allowed.');
    } else {
      print('An error occurred: $e');
    }
    return double.nan;
  }
}

class DivisionByZeroError {
}

void main() {
  double dividend = 10;
  double divisor = 0;

  double result = divideNumbers(dividend, divisor);

  if (result.isNaN) {
    print('Division failed. Please check the input values.');
  } else {
    print('Result: $result');
  }
}