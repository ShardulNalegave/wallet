import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final primaryLight =
      const Color.fromARGB(255, 105, 184, 164).withOpacity(0.7);
  static final primaryDark = const Color(0xFF244E48).withOpacity(0.6);
  static const secondaryColor = Color.fromARGB(255, 4, 7, 7);

  static final textFont = GoogleFonts.nunito();
  static final headingFont = GoogleFonts.raleway();
  static final monospaceFont = GoogleFonts.overpassMono();
  static final serifFont = GoogleFonts.abhayaLibre();
  static final moneyTextFont = GoogleFonts.splineSansMono();

  static ThemeData getThemeData() {
    return ThemeData(
      useMaterial3: true,
      textTheme: TextTheme(
        displayLarge: AppTheme.headingFont.copyWith(color: Colors.white),
        displayMedium: AppTheme.headingFont.copyWith(color: Colors.white),
        displaySmall: AppTheme.headingFont.copyWith(color: Colors.white),
        headlineLarge: AppTheme.headingFont.copyWith(color: Colors.white),
        headlineMedium: AppTheme.headingFont.copyWith(color: Colors.white),
        headlineSmall: AppTheme.headingFont.copyWith(color: Colors.white),
        titleLarge: AppTheme.textFont.copyWith(color: Colors.white),
        titleMedium: AppTheme.textFont.copyWith(color: Colors.white),
        titleSmall: AppTheme.textFont.copyWith(color: Colors.white),
        bodyLarge: AppTheme.textFont.copyWith(color: Colors.white),
        bodyMedium: AppTheme.textFont.copyWith(color: Colors.white),
        bodySmall: AppTheme.textFont.copyWith(color: Colors.white),
        labelLarge: AppTheme.monospaceFont.copyWith(color: Colors.white),
        labelMedium: AppTheme.monospaceFont.copyWith(color: Colors.white),
        labelSmall: AppTheme.monospaceFont.copyWith(color: Colors.white),
      ),
    );
  }
}
