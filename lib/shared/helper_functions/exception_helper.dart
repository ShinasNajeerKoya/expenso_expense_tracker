class PostgrestException implements Exception {
  String errorMessage;
  String? errorDescription;
  PostgrestException({required this.errorMessage, this.errorDescription});
}

class IsarErrorException implements Exception {
  String errorMessage;
  String? errorDescription;
  IsarErrorException({required this.errorMessage, this.errorDescription});
}