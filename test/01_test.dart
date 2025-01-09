import 'package:sorting_algorithms/utils.dart';
import 'package:sorting_algorithms/sorters/bogo.dart';
import 'package:sorting_algorithms/sorters/bubble_sort.dart';
import 'package:sorting_algorithms/sorters/insertion.dart';
import 'package:collection/collection.dart' as coll; // for listEquality

void main() {
  print("Hello World!");

  print("Sorted list, should return true: ${isSorted([1, 2, 3])}");

  testBogoSort();

  testBubblesort();

  testInsertionSort();

  print("Printing ordered list:");
  print("  ${generateOrderedList(10)}");

  print("Printing repeated sequence (for radix et al):");
  print("  ${generateRepeatedSequence()}");

  // Just so I know the program isn't frozen
  print("Program is exiting");
}

void testBubblesort() {
  print("Now testing bubblesort.");
  final results = bubbleSort([8, 7, 5, 37]);
  print("Bubblesort worked? ${isSorted(results)}");
}

void testBogoSort() {
  print("Now testing bogoSort.");
  List<int> unsorted0 = [24, 19, 7, 67, 3];
  print("Unsorted list: $unsorted0");
  print("Sorted list: ${bogoSort(unsorted0)}");
}

void testInsertionSort() {
  print("Now testing insertionSort.");
  List<int> unsorted0 = [24, 19, 7, 67, 3];
  print("Unsorted list: $unsorted0");
  final results = insertionSort(unsorted0);
  print("Sorted list: $results");
  print("Did it work? ${isSorted(results)}");
}
