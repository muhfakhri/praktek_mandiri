import 'dart:io';

void runTodoApp() {
  List<String> todos = [];
  while (true) {
    displayMenu();
    String? choice = getUserChoice();
    if (choice == '5') {
      handleUserChoice(choice, todos);
      return;
    }
    handleUserChoice(choice, todos);
  }
}

void displayMenu() {
  print('Pilih opsi:');
  print('1. Tambah tugas');
  print('2. Cari tugas');
  print('3. Hapus tugas');
  print('4. Tampilkan semua tugas');
  print('5. Keluar');
}

void addTask(List<String> todos) {
  stdout.write('Masukkan tugas: ');
  String? task = stdin.readLineSync();
  if (task != null && task.isNotEmpty) {
    todos.add(task);
    print('Tugas "$task" telah ditambahkan.');
  } else {
    print('Tugas tidak boleh kosong.');
  }
}

void searchTask(List<String> todos) {
  stdout.write('Masukkan tugas yang ingin dicari: ');
  String? searchTask = stdin.readLineSync();
  if (searchTask != null) {
    if (todos.contains(searchTask)) {
      print('Tugas "$searchTask" ditemukan dalam daftar.');
    } else {
      print('Tugas "$searchTask" tidak ditemukan dalam daftar.');
    }
  }
}

void removeTask(List<String> todos) {
  stdout.write('Masukkan tugas yang ingin dihapus: ');
  String? removeTask = stdin.readLineSync();
  if (removeTask != null) {
    if (todos.remove(removeTask)) {
      print('Tugas "$removeTask" telah dihapus.');
    } else {
      print('Tugas "$removeTask" tidak ditemukan dalam daftar.');
    }
  }
}

void displayTasks(List<String> todos) {
  print('Daftar tugas:');
  if (todos.isEmpty) {
    print('Tidak ada tugas dalam daftar.');
  } else {
    for (var task in todos) {
      print('- $task');
    }
  }
}

String? getUserChoice() {
  stdout.write('Masukkan pilihan Anda: ');
  return stdin.readLineSync();
}

void handleUserChoice(String? choice, List<String> todos) {
  switch (choice) {
    case '1':
      addTask(todos);
      break;
    case '2':
      searchTask(todos);
      break;
    case '3':
      removeTask(todos);
      break;
    case '4':
      displayTasks(todos);
      break;
    case '5':
      print('Keluar dari program.');
      break;
    default:
      print('Pilihan tidak valid. Silakan coba lagi.');
  }
}
