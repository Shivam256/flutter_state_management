import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String? tasktext;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(

              color: Colors.lightBlueAccent,
            ))),
            onChanged: (val) {
              tasktext = val;
            },
          ),
          SizedBox(height: 20,),
          TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(tasktext!);
                Navigator.pop(context);
                // addtask(tasktext);
              },
              child: Text(
                'ADD',
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.lightBlueAccent)),
        ]),
      ),
    );
  }
}
