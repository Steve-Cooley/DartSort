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

  test('Test bubbleSort', () {
    print("Testing bubblesort");
    print("Unsorted list: $scrambledList0");
    expect(bubbleSort(scrambledList0), equals(sortedList0));
    print("Unsorted list: $scrambledList0");
  });
}
