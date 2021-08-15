import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'api_event.dart';
part 'api_state.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  ApiBloc() : super(ApiInitial());

  @override
  Stream<ApiState> mapEventToState(
    ApiEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
