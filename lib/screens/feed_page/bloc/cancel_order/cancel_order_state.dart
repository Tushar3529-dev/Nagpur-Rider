import 'package:equatable/equatable.dart';

abstract class CancelOrderState extends Equatable {
  const CancelOrderState();

  @override
  List<Object?> get props => [];
}

class CancelOrderInitial extends CancelOrderState {}

class CancelOrderLoading extends CancelOrderState {}

class CancelOrderSuccess extends CancelOrderState {
  final String message;

  const CancelOrderSuccess(this.message);

  @override
  List<Object?> get props => [message];
}

class CancelOrderFailure extends CancelOrderState {
  final String errorMessage;

  const CancelOrderFailure(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
