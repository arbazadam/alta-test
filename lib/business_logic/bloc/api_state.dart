part of 'api_bloc.dart';

abstract class ApiState extends Equatable {
  const ApiState();

  @override
  List<Object?> get props => [];
}

class ApiInitial extends ApiState {}

class ResultsSuccessfulState extends ApiState {
  final List<Users> users;
  ResultsSuccessfulState(this.users);
}

class ResultsFailureState extends ApiState {
  final errorMessage;
  ResultsFailureState(this.errorMessage);
}
