import 'package:f_navigation/contact/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets('Judul halaman harus LIst Galery', (WidgetTester tester) async  {
    await tester.pumpWidget(const MaterialApp(
      home: Contact(),
      ));
      expect(find.text('Contact'), findsOneWidget);
  });
}