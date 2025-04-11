import 'package:flutter_test/flutter_test.dart';
import 'package:sorting_algorithms/utils.dart';
import 'package:sorting_algorithms/sorters/bogo.dart';
import 'package:sorting_algorithms/sorters/bubble_sort.dart';
import 'package:sorting_algorithms/sorters/insertion.dart';
import 'package:sorting_algorithms/sorters/shellSort.dart';
import 'package:collection/collection.dart' as coll; // for listEquality
import 'dart:math';

void main() {
  final sortedList0 = generateOrderedList(100);
  final List<int> scrambledList0 = List.from(sortedList0)..shuffle();

  testBubbleSortGroup(scrambledList0, sortedList0);
  testShellSort(scrambledList0, sortedList0);
  testInsertionSortMutating(scrambledList0, sortedList0);
  testInsertionsSortFunctional(scrambledList0, sortedList0);
}

void testInsertionSortMutating(List<int> unsorted, List<int> sorted) {
  //
  test("Test insertion sort (mutating).", () {
    // Copy scrambled list
    List<int> testList0 = List.from(unsorted);
    expect(unsorted, isNot(sorted), reason: "Avoid false successes.");
    insertionSortMutating(testList0);
    expect(testList0, equals(sorted));
  });
}

void testInsertionsSortFunctional(List<int> unsorted, List<int> sorted) {
  test('Test insertion sort non-mutating', () {
    List<int> testList0 = List.from(unsorted);
    expect(unsorted, isNot(sorted), reason: "Avoid false successes");
    List<int> result = insertionSortMutating(testList0);
    expect(result, equals(sorted));
  });
}

void testBogoSort() {}

void testShellSort(List<int> unsorted, List<int> sorted) {
  group('Testing Shellsort and variations.', () {
    test('Test mutating shellsort.', () {
      // copy scrambled list
      List<int> testList0 = List.from(unsorted);
      // verify that the scrambled list isn't in-order
      expect(unsorted, isNot(sorted), reason: "Avoid false successes.");
      shellSortMutating(testList0);
      expect(testList0, equals(sorted));
    });
  });
}

void testBubbleSortGroup(List<int> unsorted, List<int> sorted) {
  group('Testing Bubble Sort variations.', () {
    test('Test bubbleSort', () {
      expect(bubbleSort(unsorted), equals(sorted));
    });
    test('Test bubbleSortMutating', () {
      expect(unsorted, isNot(sorted),
          reason:
              "To using sorted lists as inputs, and avoid false successes.");
      List<int> testList0 = List.from(unsorted);
      bubbleSortMutating(testList0);
      expect(testList0, equals(sorted));
    });
  }); // bubblesort group
}
