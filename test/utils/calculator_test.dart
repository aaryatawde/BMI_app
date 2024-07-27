import 'package:bmi_app/utils/calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      'Give height and weight When calculateBMI function invoked Then correct BMI returned',
      () {
    //Arrange
    const int height = 70, weight = 160;

    //Act
    double bmi = calculateBMI(height, weight);
    //assert
    expect(bmi, 22.955102040816328);
  });
}
