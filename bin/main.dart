import 'package:args/args.dart';
import 'package:random_folder/generate_directory.dart';

void main(List<String> arguments) {
  ArgParser parser = ArgParser()
    ..addFlag('camel', abbr: 'c')
    ..addFlag('snake', abbr: 's');

  ArgResults results = parser.parse(arguments);

  generateDirectory(
    results['camel'],
    results['snake'],
  );
}
