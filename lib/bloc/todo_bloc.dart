import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo/model/todo_base.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<String> taskname = [];
  TodoBloc() : super(TodoState()) {
    on<AddEvent>(_add);
    on<DelEvent>(_delete);

  }

  void _add(AddEvent event,Emitter<TodoState>emit){
    final newTask = Todo(todoname: event.taskname, tododesc: event.taskdesc);
    final updatedTask = List<Todo>.from(state.tasks)..add(newTask);
    emit(state.copyWith(tasks: updatedTask));
  }

  void _delete(DelEvent event,Emitter<TodoState>emit){
    final updatedTask = List<Todo>.from(state.tasks)..removeAt(event.index);
    emit(state.copyWith(tasks: updatedTask));
  }


}
