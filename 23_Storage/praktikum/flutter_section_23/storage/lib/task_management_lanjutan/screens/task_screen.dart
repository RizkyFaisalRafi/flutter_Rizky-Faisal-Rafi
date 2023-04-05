import 'package:flutter/material.dart';
import 'package:flutter_section_23/task_management_lanjutan/models/db_manager.dart';
import 'package:flutter_section_23/task_management_lanjutan/screens/task_item_screen.dart';
import 'package:flutter_section_23/task_management_lanjutan/screens/task_list_screen.dart';
import 'package:provider/provider.dart';

import '../components/profile_sheet.dart';
import 'empty_task_screen.dart';

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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TaskItemScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildTaskScreen() {
    return Consumer<DbManager>(builder: (context, manager, child) {
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
