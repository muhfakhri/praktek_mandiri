import 'dart:io';

void runPm3() {
  List<String> pm3 = [];
  while (true) {
    displayMenu();
    String? choice = getUserChoice();
    handleUserChoice(choice, pm3);
  }
}

void displayMenu() {
  print('Pilih opsi:');
  print('1. Mencari jumlah total nilai dalam List');
  print('2. Mengubah semua elemen dalam List menjadi huruf besar');
  print('3. Membuat List baru yang berisi panjang setiap kata dalam List awal');
  print('4. Keluar');
}

void handleUserChoice(String? choice, List<String> pm3) {
  switch (choice) {
    case '1':
      totalValue(pm3);
      break;
    case '2':
      toUpperCase(pm3);
      break;
    case '3':
      wordLength(pm3);
      break;
    case '4':
      exit(0);
    default:
      print('Pilihan tidak valid.');
  }
}

String? getUserChoice() {
  stdout.write('Masukkan pilihan: ');
  return stdin.readLineSync();
}

void totalValue(List<String> pm3) {
  List<int> numbers = [1, 2, 3, 4, 5];
  int total = 0;
  for (var number in numbers) {
    total += number;
  }
  print(total);
}

void toUpperCase(List<String> pm3) {
  List<String> fruits = ['apple', 'banana', 'orange'];
  fruits.forEach((fruit) {
    print(fruit.toUpperCase());
  });
}

void wordLength(List<String> pm3) {
  List<String> words = ['hello', 'world', 'Dart'];
  List<int> wordLengths = words.map((word) => word.length).toList();
  print(wordLengths);
}
