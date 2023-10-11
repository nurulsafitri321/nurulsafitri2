import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_testing/about_screen.dart';

void main(){
  testWidgets('Judul halaman harus About Screen', (WidgetTester tester) async {
    await tester.pumpWidget( MaterialApp(
      home: AboutScreen(),
    ));

    expect(find.text('About Screen'), findsOneWidget);
  });
}