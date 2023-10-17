import 'package:bottomsheet_provider/komponen/profile.dart';
import 'package:bottomsheet_provider/models/task_controller.dart';
import 'package:bottomsheet_provider/screens/task_empty_screen.dart';
import 'package:bottomsheet_provider/screens/task_item_screen.dart';
import 'package:bottomsheet_provider/screens/task_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Row(
      children: [
        Image.asset('assets/qoute.png', width: 100, height: 450,), 
        const SizedBox(width: 10),
        const Text('Task Controller'),
    ],
  ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20.0))),
                  context: context,
                  builder: (context) => const Profile());
            },
            icon: const Icon(Icons.account_circle_outlined),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final manager = Provider.of<TaskController>(context, listen: false);

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TaskItemScreen(onCreate: (task) {
                        manager.addTask(task);
                        Navigator.pop(context);
                      })));
        },
        child: const Icon(Icons.add_box),
      ),
      body: buildTaskScreen(),
    );
  }

  Widget buildTaskScreen() {
    return Consumer<TaskController>(builder: (context, manager, child) {
      if (manager.taskModels.isNotEmpty) {
        return TaskListScreen(
          manager: manager,
        );
      } else {
        return const EmptyTaskScreen();
      }
    });
  }
}