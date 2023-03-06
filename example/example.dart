import 'package:command/command.dart';
import 'package:command/src/argument.dart';

Future<void> main(final List<String> args) async {
  final program = Program(
    name: 'something',
    description: '',
    version: 'v0.0.1',
    commands: [
      Command(
        name: 'add',
        description: 'add something',
        arguments: [
          Argument(
            name: '<string>',
            description: 'string to split',
            defaultValue: ',',
          ),
        ],
        action: () {},
      ),
    ],
  );

  await program.run(args);
}
