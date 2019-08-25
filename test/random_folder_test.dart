import 'package:test/test.dart';
import 'package:random_folder/random_folder.dart';

void main() {
  var folder = generateFolder();
  test('is a random folder', () {
    expect(folder, isA<RandomFolder>());
  });
  test('is a string version of folder', () {
    expect(folder.asString, isA<String>());
  });
  test('is a camelCase version of folder', () {
    expect(folder.asString, isA<String>());
  });
  test('is a snake_case version of folder', () {
    expect(folder.asString, isA<String>());
  });
}
