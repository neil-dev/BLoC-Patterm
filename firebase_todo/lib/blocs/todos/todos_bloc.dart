import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  @override
  TodosState get initialState => TodosInitial();

  @override
  Stream<TodosState> mapEventToState(
    TodosEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
