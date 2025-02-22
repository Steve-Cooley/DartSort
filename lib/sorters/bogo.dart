import 'package:sorting_algorithms/utils.dart';

/// Bogosort is a silly sorting algorithm.

List<int> bogoSort(List<int> inp) {
  /// Randomly shuffle elements until sorted.
  /// Complexity O(n!)
  while (!isSorted(inp)) {
    inp.shuffle();
  }
  return inp;
}
