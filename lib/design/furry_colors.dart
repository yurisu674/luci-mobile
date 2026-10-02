import 'package:flutter/material.dart';

/// FurAffinity-inspired color palette for the entire app
/// Rich, warm, playful colors with fur-themed aesthetics
class FurryColors {
  // Light mode palette - warm, creamy, plush aesthetic
  static const Color lightBackground = Color(0xFFFFF5F0); // Creamy off-white
  static const Color lightSurface = Color(0xFFFFF0F8); // Soft lavender-white
  static const Color lightSurfaceVariant = Color(0xFFFDE8F0); // Light mauve
  static const Color lightSurfaceContainer = Color(0xFFF5E6F0); // Pale plush
  static const Color lightSurfaceContainerHigh = Color(0xFFEDD8F0); // Mauve mist

  // Primary: Deep plush purple (main fur tone)
  static const Color lightPrimary = Color(0xFF8B5CF6); // Vibrant purple
  static const Color lightPrimaryContainer = Color(0xFFEDD5FF); // Light purple
  static const Color lightOnPrimary = Color(0xFFFFFFFF); // White text

  // Secondary: Soft peach/coral (warm accent)
  static const Color lightSecondary = Color(0xFFD97706); // Warm amber
  static const Color lightSecondaryContainer = Color(0xFFFED7AA); // Peach
  static const Color lightOnSecondary = Color(0xFFFFFFFF);

  // Tertiary: Mint/teal (cool accent)
  static const Color lightTertiary = Color(0xFF14B8A6); // Minty teal
  static const Color lightTertiaryContainer = Color(0xFFCCFBF1); // Light mint
  static const Color lightOnTertiary = Color(0xFFFFFFFF);

  // Additional accent colors (FurAffinity style)
  static const Color lightAccentPink = Color(0xFFEC4899); // Hot pink
  static const Color lightAccentCyan = Color(0xFF06B6D4); // Cyan
  static const Color lightAccentYellow = Color(0xFFF59E0B); // Golden amber
  static const Color lightAccentGreen = Color(0xFF10B981); // Emerald

  // Error & Status
  static const Color lightError = Color(0xFFDC2626); // Red
  static const Color lightErrorContainer = Color(0xFFFECDCD); // Light red
  static const Color lightWarning = Color(0xFFF59E0B); // Amber
  static const Color lightSuccess = Color(0xFF10B981); // Green

  // Outline & Borders
  static const Color lightOutline = Color(0xFFD8B5F0); // Soft purple outline
  static const Color lightOutlineVariant = Color(0xFFE5D4F0); // Lighter outline
  static const Color lightScrim = Color(0xFF000000); // For overlays

  // Shadow
  static const Color lightShadow = Color(0xFF8B5CF6); // Warm purple shadow

  // ============ DARK MODE ============
  // Rich, moody colors maintaining furry warmth
  static const Color darkBackground = Color(0xFF1A0F2E); // Deep purple-black
  static const Color darkSurface = Color(0xFF2D1B4E); // Dark plush
  static const Color darkSurfaceVariant = Color(0xFF3D2563); // Dark mauve
  static const Color darkSurfaceContainer = Color(0xFF4A2E7F); // Deep plush
  static const Color darkSurfaceContainerHigh = Color(0xFF5A3E99); // Darker plush

  // Primary: Bright plush purple (shines in dark)
  static const Color darkPrimary = Color(0xFFC49BFF); // Bright purple
  static const Color darkPrimaryContainer = Color(0xFF6D28D9); // Dark purple base
  static const Color darkOnPrimary = Color(0xFF1A0F2E); // Dark text

  // Secondary: Warm coral/salmon
  static const Color darkSecondary = Color(0xFFFFB3A7); // Soft coral
  static const Color darkSecondaryContainer = Color(0xFF8B3A1F); // Dark orange
  static const Color darkOnSecondary = Color(0xFF1A0F2E);

  // Tertiary: Bright mint
  static const Color darkTertiary = Color(0xFF5EEAD4); // Bright teal
  static const Color darkTertiaryContainer = Color(0xFF0D6E54); // Dark teal
  static const Color darkOnTertiary = Color(0xFF1A0F2E);

  // Additional accent colors (dark mode)
  static const Color darkAccentPink = Color(0xFFF472B6); // Bright pink
  static const Color darkAccentCyan = Color(0xFF22D3EE); // Bright cyan
  static const Color darkAccentYellow = Color(0xFFFBBF24); // Bright gold
  static const Color darkAccentGreen = Color(0xFF6EE7B7); // Bright green

  // Error & Status (dark)
  static const Color darkError = Color(0xFFFF6B6B); // Bright red
  static const Color darkErrorContainer = Color(0xFF7C2D12); // Dark red
  static const Color darkWarning = Color(0xFFFBBF24); // Bright amber
  static const Color darkSuccess = Color(0xFF6EE7B7); // Bright green

  // Outline & Borders (dark)
  static const Color darkOutline = Color(0xFF7C5FB8); // Muted purple outline
  static const Color darkOutlineVariant = Color(0xFF64456E); // Dark outline
  static const Color darkScrim = Color(0xFF000000);

  // Shadow (warm)
  static const Color darkShadow = Color(0xFF6D28D9); // Deep purple shadow

  // ============ SPECIAL GRADIENTS ============
  static List<Color> plushGradient = [
    Color(0xFF8B5CF6),
    Color(0xFFD97706),
  ];

  static List<Color> softGradient = [
    Color(0xFFC49BFF),
    Color(0xFFFFB3A7),
  ];

  static List<Color> mintyGradient = [
    Color(0xFF14B8A6),
    Color(0xFF8B5CF6),
  ];

  // ============ UTILITY METHODS ============
  /// Get color based on brightness
  static Color getGradientColor1(Brightness brightness) =>
      brightness == Brightness.light ? lightPrimary : darkPrimary;

  static Color getGradientColor2(Brightness brightness) =>
      brightness == Brightness.light ? lightSecondary : darkSecondary;

  /// Get surface color for cards
  static Color getCardSurface(Brightness brightness) =>
      brightness == Brightness.light ? lightSurface : darkSurface;

  /// Get soft shadow color
  static Color getShadowColor(Brightness brightness) =>
      brightness == Brightness.light ? lightShadow : darkShadow;
}
