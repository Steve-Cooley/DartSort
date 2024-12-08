List<int> insertionSort(List<int> inp) {
  final outp = List<int>.from(inp);
  for (int i = 1; i < inp.length; ++i) {
    int tmp = outp[i];
    int j = i - 1;

    while (j >= 0 && outp[j] > tmp) {
      // right shift
      outp[j + 1] = outp[j];
      --j;
    }
    outp[j + 1] = tmp;
  }
  return outp;
}
