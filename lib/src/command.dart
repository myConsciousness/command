import 'dart:async';

import 'package:command/src/argument.dart';
import 'package:command/src/option.dart';

class Command {
  /// Returns the new instance of [Command].
  const Command({
    required this.name,
    required this.description,
    this.arguments,
    this.options,
    required this.action,
  });

  /// The name of this command.
  final String name;

  /// The description of this command.
  final String description;

  final List<Argument>? arguments;

  /// The options of this command.
  final List<Option>? options;

  /// The action of this command.
  final FutureOr<void> Function() action;

  FutureOr<void> execute() async {
    await action.call();
  }
}
