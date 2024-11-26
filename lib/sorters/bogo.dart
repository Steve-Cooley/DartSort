import 'package:sorting_algorithms/utils.dart';

/// Bogosort is a silly sorting algorithm.

List<int> bogoSort(List<int> inp) {
  /// Randomly shuffle elements until sorted.
  /// Complexity O(n!)
  /// FIXME: Make this more immutable. Shouldn't return the same list that
  /// it takes. Trivial, but I want it to have it's own git commit.
  while (!isSorted(inp)) {
    inp.shuffle();
  }
  return inp;
}
