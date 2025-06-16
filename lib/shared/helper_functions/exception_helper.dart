class PostgrestException implements Exception {
  String errorMessage;
  String? errorDescription;
  PostgrestException({required this.errorMessage, this.errorDescription});
}

class DriftErrorException implements Exception {
  String errorMessage;
  String? errorDescription;
  DriftErrorException({required this.errorMessage, this.errorDescription});
}