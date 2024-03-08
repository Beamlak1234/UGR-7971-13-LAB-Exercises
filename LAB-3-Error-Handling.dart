import 'dart:io';

void main() {
  String filePath = 'path/to/file.txt';

  try {
    File file = File(filePath);

    // Read the contents of the file
    String contents = file.readAsStringSync();

    print('File contents:');
    print(contents);
  } catch (e) {
    if (e is FileSystemException) {
      if (e.osError?.errorCode == 2) {
        print('Error: File not found at $filePath');
      } else {
        print('Error: Failed to read the file at $filePath');
      }
    } else {
      print('An error occurred: $e');
    }
  }
}