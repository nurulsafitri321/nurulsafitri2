import 'package:flutter/material.dart';
import 'package:bottomsheet_provider/models/task_model.dart';

class TaskItemCard extends StatelessWidget {
  // property
  final TaskModel task;
  final Function() onPressed;

  // constructor
  const TaskItemCard({
    Key? key,
    required this.task,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 142, 255, 127),
          borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(task.taskName),
        IconButton(
            onPressed: () {
              showDialog(
                  context: (context),
                  builder: (context) => AlertDialog(
                        content: const Text("Apakah kamu yakin?"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Tidak")),
                          TextButton(onPressed: onPressed, child: const Text("Ya"))
                        ],
                      ));
            },
            icon: const Icon(Icons.delete_forever_rounded))
      ]),
    );
  }
}