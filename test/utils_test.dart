import 'package:flutter_test/flutter_test.dart';
import 'package:sorting_algorithms/utils.dart';

void main() {
  // run tests
  testMerge();
}

void testMerge() {
  test("Test merge.", () {
    final List<int> sortedlist1 = generateOrderedList(100);
    final List<int> scrambledList0 = List.from(sortedlist1)..shuffle();
    int mid = scrambledList0.length ~/ 2;
    List<int> leftHalf = scrambledList0.sublist(0, mid)..sort();
    List<int> rightHalf = scrambledList0.sublist(mid)..sort();

    final stopwatch = Stopwatch()..start();
    List<int> remerged = merge(leftHalf, rightHalf);
    stopwatch.stop();

    print('Merge took: ${stopwatch.elapsedMicroseconds} µ.');

    expect(remerged, equals(sortedlist1));
  });
}
