import 'package:flutter_test/flutter_test.dart';
import 'package:sorting_algorithms/utils.dart';
import 'package:sorting_algorithms/sorters/bogo.dart';
import 'package:sorting_algorithms/sorters/bubble_sort.dart';
import 'package:sorting_algorithms/sorters/insertion.dart';
import 'package:sorting_algorithms/sorters/shellSort.dart';
import 'package:collection/collection.dart' as coll; // for listEquality
import 'dart:math';

void main() {
  final sortedList0 = generateOrderedList(10);
  final List<int> scrambledList0 = List.from(sortedList0)..shuffle();

  testBubbleSortGroup(scrambledList0, sortedList0);
  testShellSort(scrambledList0, sortedList0);
}

void testShellSort(List<int> unsorted, List<int> sorted) {
  group('Testing Shellsort and variations.', () {
    print('Testing shellsort variations');
    test('Test mutating shellsort.', () {
      // copy scrambled list
      List<int> testList0 = List.from(unsorted);
      // verify that the scrambled list isn't in-order
      expect(unsorted, isNot(sorted), reason: "Avoid false successes.");
      shellSortMutating(testList0);
      expect(testList0, equals(sorted));
    });
    print("Ending shellsort testing!\n");
  });
}

void testBubbleSortGroup(List<int> unsorted, List<int> sorted) {
  group('Testing Bubble Sort variations.', () {
    test('Test bubbleSort', () {
      print("Testing bubblesort");
      print("Unsorted list: $unsorted");
      expect(bubbleSort(unsorted), equals(sorted));
      print("Unsorted list: $unsorted");
    });
    test('Test bubbleSortMutating', () {
      print("Testing in-place, or mutating bubblesort.");
      expect(unsorted, isNot(sorted),
          reason:
              "To using sorted lists as inputs, and avoid false successes.");
      List<int> testList0 = List.from(unsorted);
      bubbleSortMutating(testList0);
      expect(testList0, equals(sorted));
    });
  }); // bubblesort group
}
