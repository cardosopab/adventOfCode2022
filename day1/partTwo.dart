import 'dart:io';

void readFile() {
  // File file = File('./example.txt');
  File file = File('./puzzle.txt');
  int temp = 0;
  List top3 = [];
  file.readAsLines().then((List<String> lines) {
    for (int i = 0; i < lines.length; i++) {
      if (lines[i].isNotEmpty) {
        int x = int.parse(lines[i]);
        temp += x;
      }
      if (lines[i].isEmpty || lines.length - 1 == i) {
        top3.add(temp);
        temp = 0;
      }
    }
    top3.sort();

    print(top3.last + top3[top3.length - 3] + top3[top3.length - 2]);
  });
}

void main() {
  readFile();
}
