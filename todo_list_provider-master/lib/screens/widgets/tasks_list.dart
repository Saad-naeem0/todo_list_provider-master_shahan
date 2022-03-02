import 'package:flutter/material.dart';
import 'package:todo_list_provider/model/tasks.dart';
import 'package:todo_list_provider/screens/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Doodh khareedna hai"),
    Task(name: "Andy bhi"),
    Task(name: "3 Circle Rocks"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: tasks[index].isDone, taskTitle: tasks[index].name,
            checkboxCallBack:
            (checkboxState){
              setState(() {
                tasks[index].toggleDone();
              });
            }
        );
      },
    );
  }
}
