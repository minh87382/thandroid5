import 'dart:io';

void main() {
  var file = File('students.csv');
  var sink = file.openWrite();
  sink.write('Tên, tuổi, địa chỉ\n');
  var students = [
    ['Minh', 20, '123 Lạch Tray St'],
    ['Vũ', 21, '456 Tô Hiệu St'],
    ['Thiện', 22, '789 Lê Lợi St'],
  ];
  for (var student in students) {
    sink.write('${student[0]},${student[1]},${student[2]}\n');
  }
  sink.close();
  var lines = file.readAsLinesSync();
  var data = [];
  for (var line in lines.skip(1)) {
    var fields = line.split(',');
    var name = fields[0];
    var age = int.parse(fields[1]);
    var address = fields[2];
    data.add([name, age, address]);
  }
  for (var student in data) {
    print('${student[0]} năm nay ${student[1]} tuổi, sống ở ${student[2]}.');
  }
}
