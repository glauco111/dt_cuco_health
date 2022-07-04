abstract class IFailure {
  final String message;
  final String? details;
  final StackTrace? stackTrace;

  const IFailure({
    this.message = '',
    this.details,
    this.stackTrace,
  });

  @override
  List<Object?> get props => [
        message,
        stackTrace,
      ];
}

class ServerFailure extends IFailure {
  const ServerFailure(
      {String message = 'Falha ao obter dados', String? details})
      : super(message: message, details: details);
}
