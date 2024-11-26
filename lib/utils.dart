/// I'm dropping functions that might be widely used here.

bool isSorted(List<int> inp) {
  /// Return whether list is sorted or not.
  for (int i = 1; i < inp.length; ++i) {
    if (inp[i - 1] > inp[i]) {
      return false;
    }
  }
  return true;
}
