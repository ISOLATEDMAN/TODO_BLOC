import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/todo_bloc.dart';

Future<void> Bottomsheet(BuildContext context,int index) async {
  return showModalBottomSheet(
    context: context,
    elevation: 40,
    builder: (BuildContext context) {
      return ClipRRect(
        // Wrap the content with ClipRRect
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        child: BlocBuilder<TodoBloc, TodoState>(
          builder: (context, state) {
            
            return Container(
              color: Color.fromARGB(255, 88, 22, 219),
              height: 250,
              width: 420,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text("${state.tasks[index].todoname.toString()}",style: TextStyle(color: Colors.white,fontSize: 40),),
                  SizedBox(height: 15),
                  Text("${state.tasks[index].tododesc.toString()}",style: TextStyle(color: Colors.white,fontSize: 30)),
                ],
              ),
            );
          },
        ),
      );
    },
  );
}
