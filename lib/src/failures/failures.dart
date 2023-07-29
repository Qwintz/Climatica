import 'package:equatable/equatable.dart';

enum FailureType {
  api,
  database,
  other;
}

class Failure extends Equatable implements Exception {
  final FailureType? type;

  const Failure([this.type = FailureType.other]);

  @override
  List<Object?> get props => [
        type,
      ];
}
