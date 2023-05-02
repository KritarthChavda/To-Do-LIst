import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference the box

  final _myBox = Hive.box('mybox');
//run this method if the app iss being opened for the first time

  void createInitailData() {
    toDoList = [
      ["Learn Flutter", false],
      ["Solve DSA problems", false],
    ];
  }

  //load the data from the data base
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the databse
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
