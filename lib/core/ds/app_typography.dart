import 'package:flutter/material.dart';
import 'app_colors.dart';

/// App Typography - Centralized text style definitions for Cajueiro Fala
class AppTypography {
  // Private constructor to prevent instantiation
  AppTypography._();

  // Font Family
  static const String _fontFamily = 'Roboto'; // You can change this to your preferred font

  // Font Weights
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  // Display Text Styles
  static const TextStyle displayLarge = TextStyle(
    fontSize: 57,
    fontWeight: regular,
    letterSpacing: -0.25,
    height: 1.12,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  static const TextStyle displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: regular,
    letterSpacing: 0,
    height: 1.16,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  static const TextStyle displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: regular,
    letterSpacing: 0,
    height: 1.22,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  // Headline Text Styles
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: semiBold,
    letterSpacing: 0,
    height: 1.25,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: semiBold,
    letterSpacing: 0,
    height: 1.29,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: semiBold,
    letterSpacing: 0,
    height: 1.33,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  // Title Text Styles
  static const TextStyle titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: semiBold,
    letterSpacing: 0,
    height: 1.27,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: semiBold,
    letterSpacing: 0.15,
    height: 1.50,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  static const TextStyle titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: semiBold,
    letterSpacing: 0.1,
    height: 1.43,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  // Body Text Styles
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: regular,
    letterSpacing: 0.5,
    height: 1.50,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: regular,
    letterSpacing: 0.25,
    height: 1.43,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: regular,
    letterSpacing: 0.4,
    height: 1.33,
    fontFamily: _fontFamily,
    color: AppColors.textSecondary,
  );

  // Label Text Styles
  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: semiBold,
    letterSpacing: 0.1,
    height: 1.43,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  static const TextStyle labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: semiBold,
    letterSpacing: 0.5,
    height: 1.33,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  static const TextStyle labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: semiBold,
    letterSpacing: 0.5,
    height: 1.45,
    fontFamily: _fontFamily,
    color: AppColors.textSecondary,
  );

  // Custom Text Styles for specific use cases
  static const TextStyle buttonText = TextStyle(
    fontSize: 14,
    fontWeight: semiBold,
    letterSpacing: 0.1,
    height: 1.43,
    fontFamily: _fontFamily,
  );

  static const TextStyle captionText = TextStyle(
    fontSize: 12,
    fontWeight: regular,
    letterSpacing: 0.4,
    height: 1.33,
    fontFamily: _fontFamily,
    color: AppColors.textSecondary,
  );

  static const TextStyle overlineText = TextStyle(
    fontSize: 10,
    fontWeight: medium,
    letterSpacing: 1.5,
    height: 1.6,
    fontFamily: _fontFamily,
    color: AppColors.textSecondary,
  );

  // Input field text styles
  static const TextStyle inputText = TextStyle(
    fontSize: 16,
    fontWeight: regular,
    letterSpacing: 0.5,
    height: 1.50,
    fontFamily: _fontFamily,
    color: AppColors.textPrimary,
  );

  static const TextStyle hintText = TextStyle(
    fontSize: 16,
    fontWeight: regular,
    letterSpacing: 0.5,
    height: 1.50,
    fontFamily: _fontFamily,
    color: AppColors.textHint,
  );

  static const TextStyle errorText = TextStyle(
    fontSize: 12,
    fontWeight: regular,
    letterSpacing: 0.4,
    height: 1.33,
    fontFamily: _fontFamily,
    color: AppColors.error,
  );

  // Complete TextTheme for Material Design
  static const TextTheme textTheme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
  );
}

/// Extension to easily access text styles
extension TypographyExtension on BuildContext {
  /// Get display large text style
  TextStyle get displayLarge => AppTypography.displayLarge;
  
  /// Get display medium text style
  TextStyle get displayMedium => AppTypography.displayMedium;
  
  /// Get display small text style
  TextStyle get displaySmall => AppTypography.displaySmall;
  
  /// Get headline large text style
  TextStyle get headlineLarge => AppTypography.headlineLarge;
  
  /// Get headline medium text style
  TextStyle get headlineMedium => AppTypography.headlineMedium;
  
  /// Get headline small text style
  TextStyle get headlineSmall => AppTypography.headlineSmall;
  
  /// Get title large text style
  TextStyle get titleLarge => AppTypography.titleLarge;
  
  /// Get title medium text style
  TextStyle get titleMedium => AppTypography.titleMedium;
  
  /// Get title small text style
  TextStyle get titleSmall => AppTypography.titleSmall;
  
  /// Get body large text style
  TextStyle get bodyLarge => AppTypography.bodyLarge;
  
  /// Get body medium text style
  TextStyle get bodyMedium => AppTypography.bodyMedium;
  
  /// Get body small text style
  TextStyle get bodySmall => AppTypography.bodySmall;
  
  /// Get label large text style
  TextStyle get labelLarge => AppTypography.labelLarge;
  
  /// Get label medium text style
  TextStyle get labelMedium => AppTypography.labelMedium;
  
  /// Get label small text style
  TextStyle get labelSmall => AppTypography.labelSmall;
}