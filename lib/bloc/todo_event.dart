part of 'todo_bloc.dart';


class TodoEvent extends Equatable{
  const TodoEvent();
  
  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class AddEvent extends TodoEvent{
  final String taskname;
  final String taskdesc;
  const AddEvent({
    required this.taskname,
    required this.taskdesc
    });
    @override
    List<Object?> get props => [taskname,taskdesc];
}

class DelEvent extends TodoEvent{
    final int index;
  const DelEvent({
    required this.index,

    });
    @override
    List<Object?> get props => [index];

}
