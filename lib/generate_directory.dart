import 'dart:io';

import 'package:random_folder/random_folder.dart';

void generateDirectory(bool camelCase, bool snakeCase) {
  RandomFolder folderName = generateFolder();
  Directory folder = Directory(folderName.asString);

  if (camelCase) folder = Directory(folderName.asCamelCase);
  if (snakeCase) folder = Directory(folderName.asSnakeCase);

  folder.create();
  folder.exists().then((isThere) => isThere
      ? print('Successfully created ${folder.path}.')
      : print('Something went wrong.'));
}
