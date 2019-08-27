import 'dart:math';

int generateNumbers({int digits = 6}) {
  int _finalNum = 0;

  for (int i = 0; i < digits; i++) {
    int num = Random().nextInt(9);
    num *= pow(10, i);
    _finalNum += num;
  }

  if (_finalNum < pow(10, digits) && _finalNum > 0) {
    _finalNum += pow(10, digits);
  }

  return _finalNum;
}
