import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain(this.height, this.weight) {
    _bmi = 703 * (weight / pow(height, 2));
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 24.9)
      return 'OVERWEIGHT';
    else if (_bmi > 18.5)
      return 'NORMAL';
    else {
      return 'Underweight';
    }
  }

  String getComment() {
    if (_bmi > 24.9)
      return 'You have a higher than normal body weight. Try to exercise more.';
    else if (_bmi > 18.5)
      return 'You have a normal body weight. Good job!';
    else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
