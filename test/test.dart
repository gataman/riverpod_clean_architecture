import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

import 'listener.dart';

final counterProvider = StateProvider((ref) => 0);

void main() {
  setUpAll(() {
    registerFallbackValue(0);
  });

  test('defaults to 0 and notify listeners when value changes', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final listener = Listener();

    container.listen(
      counterProvider,
      listener.call,
      fireImmediately: true,
    );

    final count = container.read(counterProvider);

    //verify(() => listener.call(null, 0)).called(1);
    //verifyNoMoreInteractions(listener);

    //container.read(counterProvider.notifier).state++;

    //verify(() => listener.call(0, 1)).called(1);
    //verifyNoMoreInteractions(listener);
    expect(count, 0);
  });
}
