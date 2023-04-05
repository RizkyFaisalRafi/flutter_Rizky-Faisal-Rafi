import 'package:flutter/material.dart';
import 'package:flutter_section_23/task_management_lanjutan/helper/database_helper.dart';
import 'package:flutter_section_23/task_management_lanjutan/models/task_model.dart';

class DbManager extends ChangeNotifier {
  List<TaskModel> _taskModels = [];
  late DatabaseHelper _dbHelper;

  List<TaskModel> get taskModels => _taskModels;

  DbManager() {
    _dbHelper = DatabaseHelper();
    _getAllTasks();
  }

  /// Menambahkan data semua tasks
  void _getAllTasks() async {
    _taskModels = await _dbHelper.getTasks();
    notifyListeners();
  }

  /// Method addTask, getTaskById, updateTask dan deleteTask
  Future<void> addTask(TaskModel taskModel) async {
    await _dbHelper.insertTask(taskModel);
    _getAllTasks();
  }

  Future<TaskModel> getTaskById(int id) async {
    return await _dbHelper.getTaskById(id);
  }

  void updateTask(TaskModel taskModel) async {
    await _dbHelper.updateTask(taskModel);
    _getAllTasks();
  }

  void deleteTask(int id) async {
    await _dbHelper.deleteTask(id);
    _getAllTasks();
  }
}
