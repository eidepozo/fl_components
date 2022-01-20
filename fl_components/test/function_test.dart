import 'package:flutter_test/flutter_test.dart';
import 'package:fl_components/screens/counter.dart';

void main() {
  test('Counter value should be incremented', () {
    final counter = Counter();

    counter.increment();

    expect(counter.value, 1);
  });
  test('Counter value should be decreased', () {
    final counter = Counter();

    counter.decrement();

    expect(counter.value, -1);
  });
}
