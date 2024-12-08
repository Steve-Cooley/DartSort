List<int> insertionSort(List<int> inp) {
  var outp = List<int>.from(inp);
  for (int i = 1; i < inp.length; ++i) {
    int key = outp[i];
    int j = i - 1;

    while (j >= 0 && outp[j] > key) {
      // right shift
      outp[j + 1] = outp[j];
      --j;
    }
    outp[j + 1] = key;
  }
  return outp;
}
