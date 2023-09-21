// TODO 16: buat task list screen

import 'package:bottom_sheet/components/task_item_card.dart';
import 'package:bottom_sheet/models/task_manager.dart';
import 'package:flutter/material.dart';


class TaskListScreen extends StatelessWidget {
  final TaskManager manager;
  const TaskListScreen({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskItems = manager.taskModels;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        itemCount: taskItems.length,
        itemBuilder: (context, index) {
          final item = taskItems[index];
          // TODO 19: Menambahkan call back handler untuk menghapus list dan menambahkan scafold messenger
          return TaskItemCard(
            key: Key(item.id),
            task: item,
            onPressed: () {
              manager.deleteTask(index);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${item.taskName} Deleted')),
              );
            },
          );
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
