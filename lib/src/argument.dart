class Argument {
  /// Returns the new instance of [Argument].
  const Argument({
    required this.name,
    required this.description,
    this.defaultValue,
  });

  /// The name.
  final String name;

  /// The description.
  final String description;

  /// The default value.
  final String? defaultValue;
}
