import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  // Create a File object for saving the downloaded file
  File file = File(savePath);

  // Send an HTTP GET request to the URL
  var response = await http.get(Uri.parse(url));

  // Check if the request was successful (status code 200)
  if (response.statusCode == 200) {
    // Write the response body (downloaded file) to the File
    await file.writeAsBytes(response.bodyBytes);
    print('File downloaded successfully!');
  } else {
    print('Error downloading file. Status code: ${response.statusCode}');
  }
}

void main() async {
  String url = 'https://example.com/file.pdf';
  String savePath = 'path/to/save/file.pdf';

  print('Downloading file...');

  await downloadFile(url, savePath);

  print('Download complete!');
}