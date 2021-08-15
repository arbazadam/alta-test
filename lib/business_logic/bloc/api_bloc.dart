import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_app/model/users.dart';
import 'package:test_app/service/api_service.dart';

part 'api_event.dart';
part 'api_state.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  ApiBloc() : super(ApiInitial());

  @override
  Stream<ApiState> mapEventToState(
    ApiEvent event,
  ) async* {
    if (event is GetUsersFromTheApi) {
      yield* _getUsersFromTheApi(event);
    }
  }

  Stream<ApiState> _getUsersFromTheApi(GetUsersFromTheApi event) async* {
    yield ApiInitial();
    try {
      final usersFromTheApi = await Apis.getUsersFromTheApi();
      yield ResultsSuccessfulState(usersFromTheApi);
    } catch (e) {
      yield ResultsFailureState(e.toString());
    }
  }
}
