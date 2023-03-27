import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/components/profile_sheet.dart';
import 'package:task_management/models/task_manager.dart';
import 'package:task_management/screens/empty_task_screen.dart';
import 'package:task_management/screens/task_item_screen.dart';
import 'package:task_management/screens/task_list_screen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Management'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) => const ProfileSheet(),
              ); 
            },
            icon: const Icon(Icons.account_circle),
          )
        ],
      ),
      body: buildTaskScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final manager = Provider.of<TaskManager>(context, listen: false);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskItemScreen(
                onCreate: (task) {
                  manager.addTask(task);
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildTaskScreen() {
    return Consumer<TaskManager>(builder: (context, manager, child) {
      if (manager.taskModels.isNotEmpty) {
        return TaskListcreen(
          manager: manager,
        );
      } else {
        return const EmptyTaskScreen();
      }
    });
  }
}
