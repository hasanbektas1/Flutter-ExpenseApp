import 'package:expenseapp/pages/main_page.dart';
import 'package:flutter/material.dart';

ColorScheme lightColorsScheme = ColorScheme.fromSeed(seedColor: Colors.blue);
void main() {
  // Tema kuralları özelden globale doğru önem sırası arz eder.
  runApp(
    MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightColorsScheme,
            appBarTheme: const AppBarTheme().copyWith(
                backgroundColor: lightColorsScheme.onPrimaryContainer,
                foregroundColor: lightColorsScheme.primaryContainer),
            cardTheme: const CardTheme().copyWith(
                elevation: 15,
                color: lightColorsScheme.onPrimary,
                shadowColor: Colors.black,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
            textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: lightColorsScheme.primary,
                      fontSize: 26),
                ),
            iconTheme: const IconThemeData(size: 25),
            snackBarTheme: SnackBarThemeData(
              backgroundColor: lightColorsScheme.primary,
              behavior: SnackBarBehavior.floating,
              elevation: 20,
              actionBackgroundColor: lightColorsScheme.primary,
              contentTextStyle: TextStyle(
                  color: lightColorsScheme.onPrimaryContainer,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              actionTextColor: lightColorsScheme.onPrimaryContainer,
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                foregroundColor: lightColorsScheme.onPrimaryContainer,
                backgroundColor: lightColorsScheme.primary,
              ),
            ),
            inputDecorationTheme: const InputDecorationTheme(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.black)))),
        home: MainPage()),
  );
}
