import 'package:bottomsheet_provider/komponen/profile_item.dart';
import 'package:bottomsheet_provider/models/task_controller.dart';
import 'package:flutter/material.dart';



class TaskListScreen extends StatelessWidget {
  final TaskController manager;
  const TaskListScreen({Key? key, required this.manager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskItems = manager.taskModels;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        itemCount: taskItems.length,
        itemBuilder: (context, index) {
          final item = taskItems[index];
          return TaskItemCard(
              // property
              key: Key(item.id),
              task: item,
              onPressed: () {
                manager.deleteTask(index);
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${item.taskName} Deleted')));
              });
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
      ),
    );
  }
}