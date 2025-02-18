import 'package:flutter_test/flutter_test.dart';
import 'package:sorting_algorithms/utils.dart';
import 'package:sorting_algorithms/sorters/bogo.dart';
import 'package:sorting_algorithms/sorters/bubble_sort.dart';
import 'package:sorting_algorithms/sorters/insertion.dart';
import 'package:collection/collection.dart' as coll; // for listEquality
import 'dart:math';

void main() {
  final sortedList0 = generateOrderedList(10);
  final List<int> scrambledList0 = List.from(sortedList0)..shuffle();

  group('Testing Bubble Sort variations.', () {
    test('Test bubbleSort', () {
      print("Testing bubblesort");
      print("Unsorted list: $scrambledList0");
      expect(bubbleSort(scrambledList0), equals(sortedList0));
      print("Unsorted list: $scrambledList0");
    });
    test('Test bubbleSortMutating', () {
      print("Testing in-place, or mutating bubblesort.");
      expect(scrambledList0, isNot(sortedList0),
          reason:
              "To using sorted lists as inputs, and avoid false successes.");
      List<int> testList0 = List.from(scrambledList0);
      bubbleSortMutating(testList0);
      expect(testList0, equals(sortedList0));
    });
  }); // bubblesort group
}
