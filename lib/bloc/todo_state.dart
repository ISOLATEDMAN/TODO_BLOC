part of 'todo_bloc.dart';

class TodoState extends Equatable{

   final List<Todo> tasks;


   const TodoState({
    this.tasks = const [],
   });

   TodoState copyWith({List<Todo>? tasks}){
    return TodoState(tasks: tasks?? this.tasks);
   }

  @override
  List<Object?> get props => [tasks];
}

final class TodoInitial extends TodoState {}
