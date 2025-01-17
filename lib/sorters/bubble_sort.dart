List<int> bubbleSort(List<int> inp) {
  /// Sort with bubbles.
  // make a copy of input list cuz immutability.
  var outp = List<int>.from(inp);

  for (int i = 0; i < outp.length; ++i) {
    for (int j = 0; j < outp.length - i - 1; ++j) {
      // swap elements if L > R
      if (outp[j] > outp[j + 1]) {
        int temp = outp[j];
        outp[j] = outp[j + 1];
        outp[j + 1] = temp;
      }
    }
  }
  return outp;
}

void bubbleSortMutating(List<int> inp) {
  // Mutate input and sort with bubbles.
  for (int i = 0; i < inp.length; ++i) {
    for (int j = 0; j < inp.length - i - 1; ++j) {
      // swap elements if L > R
      if (inp[j] > inp[j + 1]) {
        int temp = inp[j];
        inp[j] = inp[j + 1];
        inp[j + 1] = temp;
      }
    }
  }
}
