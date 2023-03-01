import 'dart:io';

void main() {
  var file = File('hello_copy.txt');
  if (file.existsSync()) {
    file.deleteSync();
    print('File đã được xóa');
  } else {
    print('File không có để xóa');
  }
}
