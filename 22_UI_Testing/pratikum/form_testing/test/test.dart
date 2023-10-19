import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_testing/main.dart';


void main() {
  testWidgets('Judul halaman', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Form'), findsOneWidget);
  });

  testWidgets('Body halaman', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byType(TextField), findsNWidgets(7));
  });

  testWidgets('Elemen halaman', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byKey(const ValueKey('nama')), findsOneWidget);
    expect(find.byKey(const ValueKey('email')), findsOneWidget);
    expect(find.byKey(const ValueKey('nomorTelepon')), findsOneWidget);
    expect(find.byKey(const ValueKey('alamat')), findsOneWidget);
    expect(find.byKey(const ValueKey('jenisKelamin')), findsOneWidget);
    expect(find.byKey(const ValueKey('hobi')), findsOneWidget);
    expect(find.byKey(const ValueKey('gambar')), findsOneWidget);
  });
}
