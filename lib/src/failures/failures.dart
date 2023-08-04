import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable implements Exception {
  final String? message;

  const Failure([this.message]);

  @override
  List<Object?> get props => [
        message,
      ];
}

class APIFaulure extends Failure {
  const APIFaulure([super.message = "API failure"]);
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = "Network failure"]);
}

class HiveFailure extends Failure {
  const HiveFailure([super.message = "Hive failure"]);
}

class UnknownFailure extends Failure {
  const UnknownFailure([super.message = "Unknown failure"]);
}
