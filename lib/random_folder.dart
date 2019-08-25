import 'package:english_words/english_words.dart';
import 'package:random_folder/random_number.dart';

class RandomFolder {
  final String firstWord;
  final String secondWord;
  final int numbers;

  String _asString;
  String _asSnakeCase;
  String _asCamelCase;

  RandomFolder(this.firstWord, this.secondWord, this.numbers);

  String get asString => _asString ??= '$firstWord$secondWord$numbers';
  String get asSnakeCase =>
      _asSnakeCase ??= '$firstWord\_$secondWord\_$numbers';
  String get asCamelCase => _asCamelCase ??=
      '$firstWord${secondWord[0].toUpperCase()}${secondWord.substring(1)}$numbers';
}

RandomFolder generateFolder({int digits}) {
  Iterable<WordPair> words = generateWordPairs(safeOnly: true);
  int numbers = generateNumbers(digits: digits ?? 6);

  RandomFolder newFolder = RandomFolder(
    words.first.first,
    words.first.second,
    numbers,
  );

  return newFolder;
}
