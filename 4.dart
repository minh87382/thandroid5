import 'dart:io';

void main() {
  var inputFile = File('hello.txt');
  var inputStream = inputFile.openRead();
  var outputFile = File('hello_copy.txt');
  var outputStream = outputFile.openWrite();
  inputStream.pipe(outputStream);
  print('Đã sao chép tệp thành công');
}
