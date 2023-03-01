import 'dart:io';

void main() {
  var file = File('hello.txt').openSync(mode: FileMode.append);
  stdout.write('Viết tên của bạn: ');
  var name = stdin.readLineSync();
  file.writeStringSync('$name\n');
  file.closeSync();
  print('Tên của bạn đã được thêm vào file');
}
