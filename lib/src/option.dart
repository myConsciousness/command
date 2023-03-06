class Option {
  /// Returns the new instance of [Option].
  const Option({
    required this.name,
    required this.description,
    this.required = false,
  });

  /// The name of this option.
  final String name;

  /// The description of this option.
  final String description;

  /// The flag indicates this option is required or not.
  final bool required;
}
