import 'dart:io';

//first wrong guess was 11637 which was too low
//second wrong guess was 13359 which was too high
void readFile() {
  // File file = File('./example.txt');
  File file = File('./puzzle.txt');

  file.readAsLines().then(
    (List<String> lines) {
      int ans = 0;
      for (var line in lines) {
        List x = line.split('');
        int elf = 0;
        int me = 0;
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
        switch (x.last) {
          case 'X':
            me = 1;
            break;
          case 'Y':
            me = 2;
            break;
          case 'Z':
            me = 3;
            break;
        }
        if (x.first == 'A' && x.last == 'X') {
          ans = ans + me + 3;
        }
        if (x.first == 'A' && x.last == 'Y') {
          ans = ans + me + 6;
        }
        if (x.first == 'A' && x.last == 'Z') {
          ans = ans + me + 0;
        }
        if (x.first == 'B' && x.last == 'X') {
          ans = ans + me + 0;
        }
        if (x.first == 'B' && x.last == 'Y') {
          ans = ans + me + 3;
        }
        if (x.first == 'B' && x.last == 'Z') {
          ans = ans + me + 6;
        }
        if (x.first == 'C' && x.last == 'X') {
          ans = ans + me + 6;
        }
        if (x.first == 'C' && x.last == 'Y') {
          ans = ans + me + 0;
        }
        if (x.first == 'C' && x.last == 'Z') {
          ans = ans + me + 3;
        }
      }
    },
  );
}

void main() {
  readFile();
}
