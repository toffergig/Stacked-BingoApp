import 'package:bingo_app/app/app.locator.dart';
import 'package:bingo_app/components/elevated_btn.dart';
import 'package:bingo_app/ui/views/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stacked_services/stacked_services.dart';

import '../helpers/test_helpers.dart';

class MockNavigationService extends Mock implements NavigationService {}

void main() {
  group('OnboardingView Test', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());

    testWidgets('Test OnboardingView UI', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: OnboardingView(),
      ));

      expect(find.byType(Image), findsOneWidget);
      expect(find.byType(EleBtn), findsOneWidget);

      await tester.tap(find.text('Start'));
      await tester.pump();
    });
  });
}
