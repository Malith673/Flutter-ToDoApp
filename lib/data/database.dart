import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  var _myBox = Hive.box('myBox');

  //run this method if this app open in 1st time
  void createInitialData() {
    toDoList = [
      ['learn java', false],
      ['learn python', false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update the database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
