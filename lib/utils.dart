/// I'm putting functions that might be widely used here.

import 'dart:math'; // for random

bool isSorted(List<int> inp) {
  /// Return whether list is sorted or not.
  for (int i = 1; i < inp.length; ++i) {
    if (inp[i - 1] > inp[i]) {
      return false;
    }
  }
  return true;
}

List<int> generateOrderedList(int length) {
  /// Generate an ordered list.
  return List<int>.generate(length, (index) => index + 1, growable: false);
}

List<int> generateRepeatedSequence({int max = 10, int repeats = 2}) {
  /// Generate a repeated sequence in the pattern "a,b,c,a,b,c".
  return List<int>.generate(max * repeats, (index) => (index % max) + 1,
      growable: false);
}
