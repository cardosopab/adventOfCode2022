import 'dart:io';

void readFile() {
  // File file = File('./example.txt');
  File file = File('./puzzle.txt');
  List list = [];
  List alph = [
    '',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];
  file.readAsLines().then((List<String> lines) {
    int ans = 0;
    //compare ith line with the next
    for (int i = 0; i < lines.length - 2; i += 3) {
      for (int j = 0; j < lines[i].length; j++) {
        if (lines[i + 1].contains(lines[i][j]) && lines[i + 2].contains(lines[i][j])) {
          ans += alph.indexOf(lines[i][j]);
          break;
        }
      }
    }
    //verify the matching item is also in the 3rd line
    //add items
    print(ans);
  });
}

void main() {
  readFile();
}
