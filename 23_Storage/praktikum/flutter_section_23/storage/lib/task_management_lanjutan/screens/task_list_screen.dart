import 'package:flutter/material.dart';
import 'package:flutter_section_23/task_management_lanjutan/models/db_manager.dart';
import 'package:flutter_section_23/task_management_lanjutan/screens/task_item_screen.dart';
import 'package:provider/provider.dart';
import '../components/task_item_card.dart';

class TaskListcreen extends StatelessWidget {
  final DbManager manager;
  const TaskListcreen({super.key, required this.manager});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Consumer<DbManager>(
        builder: (context, manager, child) {
          final taskItems = manager.taskModels;
          return ListView.separated(
              itemBuilder: (context, index) {
                final item = taskItems[index];
                return InkWell(
                  onTap: () async {
                    final selectedTask = await manager.getTaskById(item.id!);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TaskItemScreen(
                          taskModel: selectedTask,
                        ),
                      ),
                    );
                  },
                  child: TaskItemCard(
                    task: item,
                    onPressed: () {
                      manager.deleteTask(item.id!);
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${item.taskName} Deleted'),
                        ),
                      );
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 16,
                );
              },
              itemCount: taskItems.length);
        },
      ),
    );
  }
}
