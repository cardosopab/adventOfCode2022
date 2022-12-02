import 'dart:io';

void readFile() {
  // File file = File('./example.txt');
  File file = File('./puzzle.txt');

  file.readAsLines().then(
    (List<String> lines) {
      int ans = 0;
      for (var line in lines) {
        List x = line.split('');
        int elf = 0;
        switch (x.first) {
          case 'A':
            elf = 1;
            break;
          case 'B':
            elf = 2;
            break;
          case 'C':
            elf = 3;
            break;
        }
        //rock
        if (x.first == 'A' && x.last == 'X') {
          //loss
          ans = ans + 3 + 0;
        }
        if (x.first == 'A' && x.last == 'Y') {
          //draw
          ans = ans + elf + 3;
        }
        if (x.first == 'A' && x.last == 'Z') {
          //win
          ans = ans + 2 + 6;
        }
        //paper
        if (x.first == 'B' && x.last == 'X') {
          //loss
          ans = ans + 1 + 0;
        }
        if (x.first == 'B' && x.last == 'Y') {
          //draw
          ans = ans + elf + 3;
        }
        if (x.first == 'B' && x.last == 'Z') {
          //win
          ans = ans + 3 + 6;
        }
        //scissors
        if (x.first == 'C' && x.last == 'X') {
          //loss
          ans = ans + 2 + 0;
        }
        if (x.first == 'C' && x.last == 'Y') {
          //draw
          ans = ans + elf + 3;
        }
        if (x.first == 'C' && x.last == 'Z') {
          //win
          ans = ans + 1 + 6;
        }
      }
      print(ans);
    },
  );
}

void main() {
  readFile();
}
