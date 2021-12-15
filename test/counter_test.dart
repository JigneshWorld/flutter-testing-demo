import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_demo/counter.dart';

void main() {
  group('counter', () {
    test('counter default value should be 0', () async {
      expect(Counter().value, 0);
    });

    test('counter increment once value should be 1', () async {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });

    test('counter decrement once value should be -1', () async {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });

    test('counter increment twice and decrement once then value should be 1',
        () async {
      final counter = Counter();
      counter.increment();
      counter.increment();
      counter.decrement();
      expect(counter.value, 1);
    });
  });
}
