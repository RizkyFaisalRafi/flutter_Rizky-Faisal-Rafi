import 'package:flutter/material.dart';
import 'package:task_management/components/task_tem_card.dart';
import 'package:task_management/models/task_manager.dart';

class TaskListcreen extends StatelessWidget {
  final TaskManager manager;
  const TaskListcreen({super.key, required this.manager});

  @override
  Widget build(BuildContext context) {
    final taskItems = manager.taskModels;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
          itemBuilder: (context, index) {
            final item = taskItems[index];
            return TaskItemCard(
              key: Key(item.id),
              task: item,
              onPressed: () {
                manager.deleteTask(index);
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${item.taskName} Deleted'),
                  ),
                );
              },
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 16,
            );
          },
          itemCount: taskItems.length),
    );
  }
}
