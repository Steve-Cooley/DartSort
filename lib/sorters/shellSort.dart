import 'dart:math';

List<int> mkGapSequence(int arrSize) {
  List<int> gaps = [];
  int max = arrSize ~/ 3;
  int curr;
  int k = 0;

  while (true) {
    curr = (pow(4, k + 1) + 3 * pow(2, k) + 1).toInt();

    if (curr > max) break; // gap exceeds max

    gaps.insert(0, curr); // Insert at beginning for desc order

    ++k;
  }

  gaps.add(1);

  return gaps;
}

List<int> shellSort(List<int> inp) {
  int len = inp.length;
  final gaps = mkGapSequence(len);

  for (int gap in gaps) {
    for (int i = gap; i < len; ++i) {
      int temp = inp[i];
      int j = i;
      while (j >= gap && inp[j - gap] > temp) {
        inp[j] = inp[j - gap];
        j -= gap;
      } // j
      inp[j] = temp;
    } // i
  } // gaps
  return inp;
}
