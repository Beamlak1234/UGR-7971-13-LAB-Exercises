void main() {
  Map<String, int> studentMarks = {};

  // Add entries to the map using putIfAbsent
  studentMarks.putIfAbsent('Alice', () => 85);
  studentMarks.putIfAbsent('Bob', () => 92);
  studentMarks.putIfAbsent('Charlie', () => 78);

  // Iterate over the map using forEach
  print('Student marks:');
  studentMarks.forEach((name, mark) {
    print('$name: $mark');
  });

  // Check if an entry exists using containsKey
  String studentName = 'Bob';
  if (studentMarks.containsKey(studentName)) {
    int? mark = studentMarks[studentName];
    print('$studentName\'s mark: $mark');
  } else {
    print('No entry found for $studentName');
  }
}