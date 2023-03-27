import 'package:flutter/material.dart';
import 'package:task_management/models/task_model.dart';
import 'package:uuid/uuid.dart';

class TaskItemScreen extends StatefulWidget {
  final Function(TaskModel) onCreate;

  const TaskItemScreen({Key? key, required this.onCreate}) : super(key: key);

  @override
  State<TaskItemScreen> createState() => _TaskItemScreenState();
}

class _TaskItemScreenState extends State<TaskItemScreen> {
  @override
  Widget build(BuildContext context) {
    final _taskNameController = TextEditingController();
    String _taskName = '';

    @override
    void initState() {
      super.initState();
      _taskNameController.addListener(() {
        setState(() {
          _taskName = _taskNameController.text;
        });
      });
    }

    @override
    void dispose() {
      super.dispose();
      _taskNameController.dispose();
    }

    Widget buildNameField() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Task Title'),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: _taskNameController,
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              hintText: 'E.g. study',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          )
        ],
      );
    }

    Widget buildButton() {
      return ElevatedButton(
        onPressed: () {
          final taskItem = TaskModel(
            id: const Uuid().v1(),
            taskName: _taskNameController.text,
          );
          widget.onCreate(taskItem);
        },
        child: Text('Create Task'),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            // buildTaskNameField
            buildNameField(),

            const SizedBox(
              height: 20,
            ),

            // build Button
            buildButton(),
          ],
        ),
      ),
    );
  }
}
