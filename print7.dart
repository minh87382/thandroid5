import 'dart:io';

void main() {
  File file = File('students.csv');
  String contents = file.readAsStringSync();
  var lines = file.readAsLinesSync();
  var data = [];
  for (var line in lines.skip(1)) {
    var fields = line.split(',');
    var name = fields[0];
    var age = int.parse(fields[1]);
    var address = fields[2];
    data.add([name, age, address]);
  }
  print('---------------------');
  for (var student in data) {
    print('${student[0]} năm nay ${student[1]} tuổi, sống ở ${student[2]}.');
  }
}
