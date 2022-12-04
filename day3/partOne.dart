import 'dart:io';

//first wrong try was 7100 which was too low
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
    for (var line in lines) {
      //divide line
      String temp = '';
      int len = (line.length / 2).ceil();
      // print(line.length);
      // print(len);
      //find item that belongs to both compartments
      for (int i = 0; i < line.length; i++) {
        if (i < len) {
          list.add(line[i]);
        } else if (i >= len) {
          if (list.contains(line[i])) {
            temp = list[list.indexOf(line[i])];
            // print(temp);
            break;
          }
        }
      }
      //add priorites of the matching item
      ans += alph.indexOf(temp);
      // print(alph.indexOf(temp));
      // print(list);
      list.clear();
    }
    print(ans);
  });
}

void main() {
  readFile();
}
