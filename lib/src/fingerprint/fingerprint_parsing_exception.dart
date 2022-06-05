class FingerprintParsingException implements Exception {
  FingerprintParsingException(this._message);

  final Exception _message;

  @override
  String toString() => 'FingerprintParsingException - $_message';
}
