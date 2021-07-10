import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:payflow/modules/splash/splash_page.dart';

import 'utils/utils.dart';

void main() {
  group(
    'Splash Page widget',
    () {
      late Widget widget;

      setUpAll(
        () {
          widget = buildWidget(SplashPage());
        },
      );

      testWidgets(
        'should render 2 images correctly',
        (tester) async {
          await tester.pumpWidget(widget);
          expect(
            find.byType(Image),
            findsNWidgets(2),
          );
        },
      );
    },
  );
}
