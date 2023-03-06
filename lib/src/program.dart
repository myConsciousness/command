import 'dart:async';

import 'package:command/src/command.dart';

class Program {
  /// Returns the new instance of [Program].
  Program({
    required this.name,
    required this.description,
    required this.version,
    required this.commands,
  });

  /// The name of this command.
  final String name;

  /// The description of this command.
  final String description;

  /// The version of this command.
  final String version;

  /// The defined commands.
  final List<Command> commands;

  FutureOr<void> run(final List<String> args) async {
    if (args.isEmpty) {
      throw ArgumentError();
    }

    for (final command in commands) {
      if ('' == command.name) {
        await command.action.call();
      }
    }
  }

  bool _isDuplicated(final Command command) {
    for (final $command in commands) {
      if ($command.name == command.name) {
        return true;
      }
    }

    return false;
  }
}
