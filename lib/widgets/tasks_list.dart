import 'package:flutter/material.dart';
import 'package:todo_ayee/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_ayee/models/task_data.dart';

import 'delete_dialog.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DeleteConfirmationDialog(
                      onConfirm: () {
                        taskData.deleteTask(task);
                        Navigator.of(context).pop(); // Close the dialog
                      },
                      onCancel: () {
                        Navigator.of(context).pop(); // Close the dialog
                      },
                    );
                  },
                );
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
