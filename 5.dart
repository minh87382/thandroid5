import 'dart:io';

void main() {
  for (var i = 1; i <= 5; i++) {
    var fileName = 'file_$i.txt';
    var file = File(fileName);
    file.createSync();
  }
//Em tạo 5 file cho nhanh
  print('5 file đã được tạo thành công');
}
