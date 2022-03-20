import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkboxCallback;
  final Function deleteTile;

  TaskTile({required this.title, required this.isChecked,required this.checkboxCallback,required this.deleteTile});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (){
        deleteTile();
      },
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (val) {https://docs.google.com/spreadsheets/d/181eHuMDIIeehISru3WZYHhALKrazB9hT7CSFR8qx_DQ/edit#gid=0
          checkboxCallback(val);
          // handleChange(val);
        },
      ),
    );
  }
}
