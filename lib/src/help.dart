import '../command.dart';

class Help {
  /// Returns the new instance of [Help].
  const Help(
    this.programName,
    this.command,
  );

  /// The name of this program.
  final String programName;

  /// The command to show help.
  final Command command;

  String show() {
    final buffer = StringBuffer()
      ..writeln('Usage: $programName ${command.name} {options}')
      ..writeln()
      ..writeln(command.description)
      ..writeln();

    return buffer.toString();
  }
}
