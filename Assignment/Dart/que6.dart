import 'dart:io';

class Task {
  String name;
  bool isCompleted;

  Task(this.name, {this.isCompleted = false});
}

void main() {
  List<Task> tasks = [];
  bool running = true;

  while (running) {
    print("\n--- TO-DO LIST MENU ---");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. Mark Task as Completed");
    print("4. View Pending Tasks");
    print("5. View Completed Tasks");
    print("6. Exit");
    print("Enter your choice:");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter task name:");
        String taskName = stdin.readLineSync()!;
        tasks.add(Task(taskName));
        print("Task added successfully.");
        break;

      case 2:
        displayAllTasks(tasks);
        print("Enter task number to remove:");
        int index = int.parse(stdin.readLineSync()!) - 1;
        if (index >= 0 && index < tasks.length) {
          tasks.removeAt(index);
          print("Task removed.");
        } else {
          print("Invalid task number.");
        }
        break;

      case 3:
        displayAllTasks(tasks);
        print("Enter task number to mark as completed:");
        int index = int.parse(stdin.readLineSync()!) - 1;
        if (index >= 0 && index < tasks.length) {
          tasks[index].isCompleted = true;
          print("Task marked as completed.");
        } else {
          print("Invalid task number.");
        }
        break;

      case 4:
        print("\n--- Pending Tasks ---");
        for (var task in tasks) {
          if (!task.isCompleted) {
            print("- ${task.name}");
          }
        }
        break;

      case 5:
        print("\n--- Completed Tasks ---");
        for (var task in tasks) {
          if (task.isCompleted) {
            print("- ${task.name}");
          }
        }
        break;

      case 6:
        running = false;
        print("Exiting To-Do List...");
        break;

      default:
        print("Invalid choice. Try again.");
    }
  }
}

void displayAllTasks(List<Task> tasks) {
  print("\n--- All Tasks ---");
  for (int i = 0; i < tasks.length; i++) {
    print("${i + 1}. ${tasks[i].name} "
        "[${tasks[i].isCompleted ? 'Completed' : 'Pending'}]");
  }
}