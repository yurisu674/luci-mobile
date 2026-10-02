import 'package:flutter/material.dart';
import 'furry_colors.dart';

/// Complete FurAffinity-inspired theme definition
/// Replaces Material 3 with warm, playful aesthetics

class FurryTheme {
  /// Light theme with warm, creamy colors
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: FurryColors.lightPrimary,
        onPrimary: FurryColors.lightOnPrimary,
        primaryContainer: FurryColors.lightPrimaryContainer,
        onPrimaryContainer: FurryColors.lightPrimary,
        secondary: FurryColors.lightSecondary,
        onSecondary: FurryColors.lightOnSecondary,
        secondaryContainer: FurryColors.lightSecondaryContainer,
        onSecondaryContainer: FurryColors.lightSecondary,
        tertiary: FurryColors.lightTertiary,
        onTertiary: FurryColors.lightOnTertiary,
        tertiaryContainer: FurryColors.lightTertiaryContainer,
        onTertiaryContainer: FurryColors.lightTertiary,
        error: FurryColors.lightError,
        onError: Colors.white,
        errorContainer: FurryColors.lightErrorContainer,
        onErrorContainer: FurryColors.lightError,
        background: FurryColors.lightBackground,
        onBackground: Color(0xFF1A1A1A),
        surface: FurryColors.lightSurface,
        onSurface: Color(0xFF1A0F2E),
        surfaceVariant: FurryColors.lightSurfaceVariant,
        onSurfaceVariant: Color(0xFF3D2563),
        outline: FurryColors.lightOutline,
        outlineVariant: FurryColors.lightOutlineVariant,
        scrim: FurryColors.lightScrim,
        shadow: FurryColors.lightShadow,
        surfaceTint: FurryColors.lightPrimary,
      ),
      // AppBar styling
      appBarTheme: AppBarTheme(
        backgroundColor: FurryColors.lightBackground,
        foregroundColor: Color(0xFF1A0F2E),
        elevation: 0,
        scrolledUnderElevation: 2,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: Color(0xFF1A0F2E),
          letterSpacing: 0.3,
        ),
        iconTheme: IconThemeData(
          color: FurryColors.lightPrimary,
          size: 24,
        ),
      ),
      // Card styling
      cardTheme: CardThemeData(
        color: FurryColors.lightSurface,
        elevation: 2,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      // Elevated button styling
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: FurryColors.lightPrimary,
          foregroundColor: Colors.white,
          elevation: 4,
          padding: EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 14,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            letterSpacing: 0.5,
          ),
        ),
      ),
      // Text button styling
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: FurryColors.lightPrimary,
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
      // Icon button styling
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconColor: MaterialStateProperty.all(
            FurryColors.lightPrimary,
          ),
        ),
      ),
      // Floating action button styling
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: FurryColors.lightPrimary,
        foregroundColor: Colors.white,
        elevation: 6,
        highlightElevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      // Input decoration styling
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: FurryColors.lightSurfaceContainer,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: FurryColors.lightOutlineVariant,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: FurryColors.lightOutlineVariant,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: FurryColors.lightPrimary,
            width: 2,
          ),
        ),
        labelStyle: TextStyle(
          color: FurryColors.lightPrimary,
          fontWeight: FontWeight.w600,
        ),
        hintStyle: TextStyle(
          color: Color(0xFF3D2563).withValues(alpha: 0.6),
        ),
      ),
      // Chip styling
      chipTheme: ChipThemeData(
        backgroundColor: FurryColors.lightPrimaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: FurryColors.lightPrimary.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        labelStyle: TextStyle(
          color: FurryColors.lightPrimary,
          fontWeight: FontWeight.w600,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
      ),
      // Dialog styling
      dialogTheme: DialogThemeData(
        backgroundColor: FurryColors.lightSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        elevation: 4,
      ),
      // Bottom navigation styling
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: FurryColors.lightSurface,
        selectedItemColor: FurryColors.lightPrimary,
        unselectedItemColor: Color(0xFF3D2563).withValues(alpha: 0.6),
        elevation: 8,
        type: BottomNavigationBarType.fixed,
      ),
      // Progress indicator styling
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: FurryColors.lightPrimary,
      ),
      // Slider styling
      sliderTheme: SliderThemeData(
        activeTrackColor: FurryColors.lightPrimary,
        inactiveTrackColor: FurryColors.lightOutlineVariant,
        thumbColor: FurryColors.lightPrimary,
        overlayColor: FurryColors.lightPrimary.withValues(alpha: 0.2),
      ),
    );
  }

  /// Dark theme with moody, rich colors
  static ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: FurryColors.darkPrimary,
        onPrimary: FurryColors.darkOnPrimary,
        primaryContainer: FurryColors.darkPrimaryContainer,
        onPrimaryContainer: FurryColors.darkPrimary,
        secondary: FurryColors.darkSecondary,
        onSecondary: FurryColors.darkOnSecondary,
        secondaryContainer: FurryColors.darkSecondaryContainer,
        onSecondaryContainer: FurryColors.darkSecondary,
        tertiary: FurryColors.darkTertiary,
        onTertiary: FurryColors.darkOnTertiary,
        tertiaryContainer: FurryColors.darkTertiaryContainer,
        onTertiaryContainer: FurryColors.darkTertiary,
        error: FurryColors.darkError,
        onError: Color(0xFF1A0F2E),
        errorContainer: FurryColors.darkErrorContainer,
        onErrorContainer: FurryColors.darkError,
        background: FurryColors.darkBackground,
        onBackground: Color(0xFFF5F5F5),
        surface: FurryColors.darkSurface,
        onSurface: Color(0xFFF5F5F5),
        surfaceVariant: FurryColors.darkSurfaceVariant,
        onSurfaceVariant: Color(0xFFC9B8D4),
        outline: FurryColors.darkOutline,
        outlineVariant: FurryColors.darkOutlineVariant,
        scrim: FurryColors.darkScrim,
        shadow: FurryColors.darkShadow,
        surfaceTint: FurryColors.darkPrimary,
      ),
      // AppBar styling
      appBarTheme: AppBarTheme(
        backgroundColor: FurryColors.darkBackground,
        foregroundColor: Color(0xFFF5F5F5),
        elevation: 0,
        scrolledUnderElevation: 2,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: Color(0xFFF5F5F5),
          letterSpacing: 0.3,
        ),
        iconTheme: IconThemeData(
          color: FurryColors.darkPrimary,
          size: 24,
        ),
      ),
      // Card styling
      cardTheme: CardThemeData(
        color: FurryColors.darkSurface,
        elevation: 2,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      // Elevated button styling
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: FurryColors.darkPrimary,
          foregroundColor: FurryColors.darkOnPrimary,
          elevation: 4,
          padding: EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 14,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            letterSpacing: 0.5,
          ),
        ),
      ),
      // Text button styling
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: FurryColors.darkPrimary,
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
      // Icon button styling
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconColor: MaterialStateProperty.all(
            FurryColors.darkPrimary,
          ),
        ),
      ),
      // Floating action button styling
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: FurryColors.darkPrimary,
        foregroundColor: FurryColors.darkOnPrimary,
        elevation: 6,
        highlightElevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      // Input decoration styling
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: FurryColors.darkSurfaceContainer,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: FurryColors.darkOutlineVariant,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: FurryColors.darkOutlineVariant,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: FurryColors.darkPrimary,
            width: 2,
          ),
        ),
        labelStyle: TextStyle(
          color: FurryColors.darkPrimary,
          fontWeight: FontWeight.w600,
        ),
        hintStyle: TextStyle(
          color: Color(0xFFC9B8D4).withValues(alpha: 0.6),
        ),
      ),
      // Chip styling
      chipTheme: ChipThemeData(
        backgroundColor: FurryColors.darkPrimaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: FurryColors.darkPrimary.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        labelStyle: TextStyle(
          color: FurryColors.darkPrimary,
          fontWeight: FontWeight.w600,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
      ),
      // Dialog styling
      dialogTheme: DialogThemeData(
        backgroundColor: FurryColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        elevation: 4,
      ),
      // Bottom navigation styling
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: FurryColors.darkSurface,
        selectedItemColor: FurryColors.darkPrimary,
        unselectedItemColor: Color(0xFFC9B8D4).withValues(alpha: 0.6),
        elevation: 8,
        type: BottomNavigationBarType.fixed,
      ),
      // Progress indicator styling
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: FurryColors.darkPrimary,
      ),
      // Slider styling
      sliderTheme: SliderThemeData(
        activeTrackColor: FurryColors.darkPrimary,
        inactiveTrackColor: FurryColors.darkOutlineVariant,
        thumbColor: FurryColors.darkPrimary,
        overlayColor: FurryColors.darkPrimary.withValues(alpha: 0.2),
      ),
    );
  }
}
