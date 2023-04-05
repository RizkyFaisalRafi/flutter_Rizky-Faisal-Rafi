import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/task_model.dart';

class TaskItemCard extends StatelessWidget {
  final TaskModel task;
  final Function() onPressed;

  const TaskItemCard({
    super.key,
    required this.task,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            task.taskName,
            style: GoogleFonts.poppins(),
          ),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text('Are you sure?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('No'),
                    ),
                    TextButton(
                      onPressed: onPressed,
                      child: const Text('Yes'),
                    )
                  ],
                ),
              );
            },
            icon: const Icon(
              Icons.delete_forever_rounded,
            ),
          )
        ],
      ),
    );
  }
}
