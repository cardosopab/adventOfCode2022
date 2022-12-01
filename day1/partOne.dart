import 'dart:io';

void readFile() {
  File file = File('./puzzle.txt');
  int max = 0;
  int temp = 0;
  file.readAsLines().then((List<String> lines) {
    for (var line in lines) {
      if (line.isNotEmpty) {
        int x = int.parse(line);
        temp += x;
      } else {
        if (max < temp) {
          max = temp;
        }
        temp = 0;
      }
    }
    print(max);
  });
}

void main() {
  readFile();
}
