class CommandError implements Error {
  /// Returns the new instance of [CommandError].
  const CommandError(
    this.reason,
    this.stackTrace,
  );

  /// The reason of this error.
  final String reason;

  @override
  final StackTrace stackTrace;
}
