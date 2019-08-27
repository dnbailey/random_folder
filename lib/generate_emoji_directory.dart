import 'dart:io';

void generateEmojiDirectory() {
  Directory folder = Directory('🤠');

  folder.create();
  folder.exists().then((isThere) => isThere
      ? print('Successfully created ${folder.path}.')
      : print('Something went wrong.'));
}
