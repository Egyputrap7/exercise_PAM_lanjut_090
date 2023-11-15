import 'package:exercise_1/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:exercise_1/register.dart';

void main() {
  group('Register Page Unit Tests', () {
    testWidgets('Name validation should return error message for empty input',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(home: register()));

      // Wait for animations to complete
      await tester.pumpAndSettle();

      // Trigger the form validation
      await tester.tap(find.text('Login'));
      await tester.pump();

      // Verify if the error message is displayed
      expect(find.text('Please Enter Your Name'), findsOneWidget);
    });


  });


  group('Register Page Unit Tests', () {
    testWidgets('Password validation should return error for less than 6 characters',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(home: register()));

      // Wait for animations to complete
      await tester.pumpAndSettle();

      // Enter a password with less than 6 characters
      await tester.enterText(find.byKey(Key('passwordField')), '12345');
      await tester.pump();

      // Trigger the form validation
      await tester.tap(find.text('Login'));
      await tester.pump();

      // Verify if the error message is displayed
      expect(find.text('Password must be atleast 6 characters'), findsOneWidget);
    });

    // Add more test cases as needed

    // ...

  });








  // group('Login Name test', () {

  //   testWidgets('Name validator',(WidgetTester tester)  async{


  //     await tester.pumpWidget(MaterialApp(home: login()));

  //     // Wait for animations to complete
  //     await tester.pumpAndSettle();

  //     // Trigger the form validation
  //     await tester.tap(find.text('Login'));
  //     await tester.pump();

  //     // Verify if the error message is displayed
  //     expect(find.text('Please Enter Your Name'), findsOneWidget);

  //   });



  //  });
}
