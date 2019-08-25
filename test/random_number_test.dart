import 'package:test/test.dart';
import 'package:random_folder/random_number.dart';

void main() {
  test('is a number', () {
    expect(generateNumbers(), isA<int>());
  });
  test('is a six digit number', () {
    expect(generateNumbers(), greaterThan(99999));
  });
  test('is a ten digit number', () {
    expect(generateNumbers(digits: 10), greaterThan(999999999));
  });
  test('is a zero', () {
    expect(generateNumbers(digits: 0), isZero);
  });
}
