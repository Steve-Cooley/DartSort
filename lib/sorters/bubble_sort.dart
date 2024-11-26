List<int> bubbleSort(List<int> inp) {
  /// Sort with bubbles.
  print("Entering bubblesort");
  // make a copy of input list cuz immutability.
  var outp = List<int>.from(inp);

  for (int i = 0; i < outp.length; ++i) {
    for (int j = 0; j < outp.length - i - 1; ++j) {
      // print("taco");
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
