// Test: widget_test.dart

// Path: test/widget_test.dart


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bom_lifestyle_flutter/widgets/appbar.dart';
import 'package:bom_lifestyle_flutter/screens/home_light.dart';
import 'package:bom_lifestyle_flutter/screens/home_dark.dart';
import 'package:bom_lifestyle_flutter/screens/home.dart';

void main() {
  testWidgets('HomeLight has text Home Light', (WidgetTester tester) async {
    await tester.pumpWidget(const HomeLight());
    expect(find.text('Home Light'), findsOneWidget);
  });

  testWidgets('HomeDark has text Home Dark', (WidgetTester tester) async {
    await tester.pumpWidget(const HomeDark());
    expect(find.text('Home Dark'), findsOneWidget);
  });

  testWidgets('Home has text Home Light', (WidgetTester tester) async {
    await tester.pumpWidget(const Home());
    expect(find.text('Home Light'), findsOneWidget);
  });

  testWidgets('Home has text Home Dark', (WidgetTester tester) async {
    await tester.pumpWidget(const Home());
    await tester.tap(find.byIcon(Icons.dark_mode));
    await tester.pump();
    expect(find.text('Home Dark'), findsOneWidget);
  });

  testWidgets('AppBarWidget has text bom', (WidgetTester tester) async {
    await tester.pumpWidget(const AppBarWidget());
    expect(find.text('bom'), findsOneWidget);
  });
}