void manageData() {
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  List<int> numbers = [1, 2, 3, 4, 5];
  List<dynamic> mixed = [1, 'two', 3.14];

  Set<int> evenNumbers = {2, 4, 6, 8};

  Map<String, String> users = {
    'user1': 'alice@example.com',
    'user2': 'bob@example.com'
  };

  modifyData(names, users);

  printData(names, numbers, mixed, evenNumbers, users);
}

void modifyData(List<String> names, Map<String, String> users) {
  names.remove('Charlie');
  users['user3'] = 'charlie@example.com';
}

void printData(List<String> names, List<int> numbers, List<dynamic> mixed,
    Set<int> evenNumbers, Map<String, String> users) {
  print('$names, $numbers, $mixed, $evenNumbers, $users');
}
