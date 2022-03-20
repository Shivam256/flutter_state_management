import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:todoey_app/models/task.dart';

import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final Task taskItem = taskData.tasks[index];
            return TaskTile(
              title: taskItem.name,
              isChecked: taskItem.isDone!,
              checkboxCallback: (nv) {
                taskData.updateTask(taskItem);
              },
              deleteTile:(){
                taskData.deleteTask(taskItem);
              }
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
