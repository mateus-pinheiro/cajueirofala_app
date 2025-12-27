import 'package:flutter/material.dart';

/// App Colors - Centralized color definitions for Voz Ativa
class AppColors {
  AppColors._();

  // ==============================
  // Brand Colors (Voz Ativa)
  // ==============================

  /// Primary brand color - Trust & stability
  static const primary = Color(0xFF1F3A5F); // Deep Blue
  static const primaryLight = Color(0xFF35597A);
  static const primaryDark = Color(0xFF14263D);

  /// Secondary brand color - Participation & action (muted)
  static const secondary = Color(0xFF4CAF50); // Muted Green
  static const secondaryLight = Color(0xFF80E27E);
  static const secondaryDark = Color(0xFF087F23);

  /// Base background
  static const white = Color(0xFFFFFFFF);

  // ==============================
  // Semantic Colors
  // ==============================

  static const success = secondary;
  static const warning = Color(0xFFFFB020);
  static const error = Color(0xFFE53935);
  static const info = Color(0xFF4DA3FF);

  // ==============================
  // Neutral / Grey Scale
  // ==============================

  static const grey50 = Color(0xFFF9FAFB);
  static const grey100 = Color(0xFFF3F4F6);
  static const grey200 = Color(0xFFE5E7EB);
  static const grey300 = Color(0xFFD1D5DB);
  static const grey400 = Color(0xFF9CA3AF);
  static const grey500 = Color(0xFF6B7280);
  static const grey600 = Color(0xFF4B5563);
  static const grey700 = Color(0xFF374151);
  static const grey800 = Color(0xFF1F2937);
  static const grey900 = Color(0xFF111827);
  static const black = Color(0xFF000000);

  // ==============================
  // Text Colors
  // ==============================

  static const textPrimary = grey900;
  static const textSecondary = grey600;
  static const textHint = grey400;
  static const textDisabled = grey300;

  static const textOnPrimary = white;
  static const textOnSecondary = white;

  // ==============================
  // Surface & Background
  // ==============================

  static const background = white;
  static const backgroundVariant = grey50;

  static const surface = white;
  static const surfaceVariant = grey100;

  // ==============================
  // Borders & Dividers
  // ==============================

  static const border = grey200;
  static const borderFocus = secondary;
  static const borderError = error;
  static const borderDisabled = grey300;

  // ==============================
  // Shadows
  // ==============================

  static const shadow = Color(0x1A000000);
  static const shadowLight = Color(0x0D000000);

  // ==============================
  // Gradients (optional)
  // ==============================

  static const gradientPrimary = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, primaryDark],
  );

  static const gradientSecondary = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [secondary, secondaryDark],
  );

  // ==============================
  // Dark Theme (optional)
  // ==============================

  static const darkBackground = Color(0xFF0F172A);
  static const darkSurface = Color(0xFF1E293B);

  static const darkTextPrimary = white;
  static const darkTextSecondary = grey400;
  static const darkBorder = grey700;
}
