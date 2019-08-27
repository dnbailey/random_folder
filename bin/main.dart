import 'package:args/args.dart';
import 'package:random_folder/generate_directory.dart';
import 'package:random_folder/generate_emoji_directory.dart';

void main(List<String> arguments) {
  ArgParser parser = ArgParser()
    ..addFlag('camel', abbr: 'c')
    ..addFlag('snake', abbr: 's')
    ..addFlag('emoji', abbr: 'e');

  ArgResults results = parser.parse(arguments);

  !results['emoji']
      ? generateDirectory(
          results['camel'],
          results['snake'],
        )
      : generateEmojiDirectory();
}
