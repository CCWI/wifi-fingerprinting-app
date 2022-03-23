import 'package:meta/meta.dart';

class DataSourceException implements Exception {
  final dynamic exception;
  final String message;

  DataSourceException({
    @required this.exception,
    this.message,
  });

  @override
  String toString() {
    const explanation = 'Error occured in data source.';
    return Error.safeToString('$explanation Error was:\n$exception');
  }
}
