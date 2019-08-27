import 'dart:io';

import 'package:demoji/demoji.dart';

void generateEmojiDirectory() {
  Directory folder = Directory(Demoji.cowboy_hat_face);

  folder.create();
  folder.exists().then((isThere) => isThere
      ? print('Successfully created ${folder.path}.')
      : print('Something went wrong.'));
}
