import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/todo_bloc.dart';
import 'package:todo/screens/home.dart';

// ignore: non_constant_identifier_names
Future<void> DialogBox(BuildContext context)async{
  TextEditingController _taskname = TextEditingController();
  TextEditingController _taskdesc = TextEditingController();
  return showDialog(context: context, builder: (context) {
    
    return AlertDialog(
      
      title: Text("Your Todo"),
      content:SingleChildScrollView(
       child:Column(
        children: [
          SizedBox(
            width: 230,
            child: TextFormField(
              controller: _taskname,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "enter task name",
                fillColor: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 20,),
      SizedBox(
            width: 230,
            height: 60,
            child: TextFormField(
              controller: _taskdesc,
              maxLines: 5,
              minLines: 2,
              
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintMaxLines: 45,
                hintText: "enter task desc",
                
                
              ),
            ),
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            late final String taskname;
            late final String taskdesc;
            taskname = _taskname.text;
            taskdesc = _taskdesc.text;

            context.read<TodoBloc>().add(AddEvent(taskname: taskname, taskdesc: taskdesc));
            Navigator.pop(context,MaterialPageRoute(builder: (context)=>Home()));
          }, child: Text("Submit")),
        ],
      ),
    ));
  },);
}