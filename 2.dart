import 'dart:io';

void main() {
  var namesFile = File('names.txt');
  var names = namesFile.readAsLinesSync();
  stdout.write('Nhập tên của những bạn bè của bạn: ');
  var friendName = stdin.readLineSync();
  names.add(friendName!);
  namesFile.writeAsStringSync(names.join('\n'));
  print('Tên của những bạn bè của bạn đã được thêm vào file.');
}
