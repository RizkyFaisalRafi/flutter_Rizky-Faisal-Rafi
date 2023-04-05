import 'package:flutter/material.dart';
import 'package:flutter_section_23/task_management_lanjutan/models/db_manager.dart';
import 'package:provider/provider.dart';
import '../models/task_model.dart';

class TaskItemScreen extends StatefulWidget {
  final TaskModel? taskModel;

  const TaskItemScreen({Key? key, this.taskModel}) : super(key: key);

  @override
  State<TaskItemScreen> createState() => _TaskItemScreenState();
}

class _TaskItemScreenState extends State<TaskItemScreen> {
  final _taskNameController = TextEditingController();
  bool _isUpdate = false;

  @override
  void initState() {
    super.initState();
    if (widget.taskModel != null) {
      _taskNameController.text = widget.taskModel!.taskName;
      _isUpdate = true;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _taskNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          if (!_isUpdate) {
            final task = TaskModel(taskName: _taskNameController.text);
            Provider.of<DbManager>(context, listen: false).addTask(task);
          } else {
            final task = TaskModel(
              id: widget.taskModel!.id,
              taskName: _taskNameController.text,
            );
            Provider.of<DbManager>(context, listen: false).updateTask(task);
            Navigator.pop(context);
          }
        },
        child: const Text('Create Task'),
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
