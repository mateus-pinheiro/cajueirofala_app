import 'package:flutter/material.dart';

/// App Colors - Centralized color definitions for Cajueiro Fala
class AppColors {
  // Private constructor to prevent instantiation
  AppColors._();

  // Primary Brand Colors - Cajueiro inspired
  static const primary = Color(0xFF2E7D32); // Forest Green
  static const primaryLight = Color(0xFF60AD5E);
  static const primaryDark = Color(0xFF005005);
  
  static const secondary = Color(0xFF8BC34A); // Light Green
  static const secondaryLight = Color(0xFFBEF67A);
  static const secondaryDark = Color(0xFF5A9216);
  
  static const tertiary = Color(0xFFFF8F00); // Amber Orange
  static const tertiaryLight = Color(0xFFFFC046);
  static const tertiaryDark = Color(0xFFC56000);

  // Semantic Colors
  static const error = Color(0xFFD32F2F);
  static const errorLight = Color(0xFFFF6659);
  static const errorDark = Color(0xFF9A0007);
  
  static const warning = Color(0xFFFF9800);
  static const warningLight = Color(0xFFFFC947);
  static const warningDark = Color(0xFFC66900);
  
  static const success = Color(0xFF388E3C);
  static const successLight = Color(0xFF6ABF69);
  static const successDark = Color(0xFF00600F);
  
  static const info = Color(0xFF1976D2);
  static const infoLight = Color(0xFF63A4FF);
  static const infoDark = Color(0xFF004BA0);

  // Neutral Colors - Light Theme
  static const white = Color(0xFFFFFFFF);
  static const grey50 = Color(0xFFFAFAFA);
  static const grey100 = Color(0xFFF5F5F5);
  static const grey200 = Color(0xFFEEEEEE);
  static const grey300 = Color(0xFFE0E0E0);
  static const grey400 = Color(0xFFBDBDBD);
  static const grey500 = Color(0xFF9E9E9E);
  static const grey600 = Color(0xFF757575);
  static const grey700 = Color(0xFF616161);
  static const grey800 = Color(0xFF424242);
  static const grey900 = Color(0xFF212121);
  static const black = Color(0xFF000000);

  // Text Colors
  static const textPrimary = Color(0xFF212121);
  static const textSecondary = Color(0xFF757575);
  static const textDisabled = Color(0xFFBDBDBD);
  static const textHint = Color(0xFF9E9E9E);
  static const textOnPrimary = Color(0xFFFFFFFF);
  static const textOnSecondary = Color(0xFF000000);

  // Surface Colors
  static const surface = Color(0xFFFAFAFA);
  static const surfaceVariant = Color(0xFFF5F5F5);
  static const background = Color(0xFFFFFFFF);
  static const backgroundVariant = Color(0xFFF8F8F8);

  // Border Colors
  static const border = Color(0xFFE0E0E0);
  static const borderFocus = Color(0xFF2E7D32);
  static const borderError = Color(0xFFD32F2F);
  static const borderDisabled = Color(0xFFBDBDBD);

  // Shadow Colors
  static const shadow = Color(0x1A000000);
  static const shadowLight = Color(0x0D000000);
  static const shadowDark = Color(0x33000000);

  // Dark Theme Colors
  static const darkSurface = Color(0xFF121212);
  static const darkBackground = Color(0xFF000000);
  static const darkSurfaceVariant = Color(0xFF1E1E1E);
  static const darkTextPrimary = Color(0xFFFFFFFF);
  static const darkTextSecondary = Color(0xFFB3B3B3);
  static const darkBorder = Color(0xFF2C2C2C);

  // Gradient Colors
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

  static const gradientTertiary = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [tertiary, tertiaryDark],
  );

  // Nature-inspired colors for Cajueiro theme
  static const leafGreen = Color(0xFF4CAF50);
  static const barkBrown = Color(0xFF795548);
  static const skyBlue = Color(0xFF87CEEB);
  static const sunYellow = Color(0xFFFFD54F);
  static const earthBrown = Color(0xFF8D6E63);
}