import 'package:flutter/material.dart';

/// App Spacing and Dimensions - Centralized spacing system for Cajueiro Fala
class AppSpacing {
  // Private constructor to prevent instantiation
  AppSpacing._();

  // Base spacing unit (8dp Material Design)
  static const double _baseUnit = 8.0;

  // Spacing Scale (based on 8dp grid)
  static const double xs = _baseUnit * 0.5; // 4dp
  static const double sm = _baseUnit; // 8dp
  static const double md = _baseUnit * 2; // 16dp
  static const double lg = _baseUnit * 3; // 24dp
  static const double xl = _baseUnit * 4; // 32dp
  static const double xxl = _baseUnit * 5; // 40dp
  static const double xxxl = _baseUnit * 6; // 48dp

  // Padding variations
  static const double paddingXs = xs;
  static const double paddingSm = sm;
  static const double paddingMd = md;
  static const double paddingLg = lg;
  static const double paddingXl = xl;
  static const double paddingXxl = xxl;

  // Margin variations
  static const double marginXs = xs;
  static const double marginSm = sm;
  static const double marginMd = md;
  static const double marginLg = lg;
  static const double marginXl = xl;
  static const double marginXxl = xxl;

  // Gap variations for Flex layouts
  static const double gapXs = xs;
  static const double gapSm = sm;
  static const double gapMd = md;
  static const double gapLg = lg;
  static const double gapXl = xl;
  static const double gapXxl = xxl;
}

/// App Dimensions - Standard component sizes and dimensions
class AppDimensions {
  // Private constructor to prevent instantiation
  AppDimensions._();

  // Button Heights
  static const double buttonHeightSmall = 32.0;
  static const double buttonHeightMedium = 40.0;
  static const double buttonHeightLarge = 48.0;

  // Icon Sizes
  static const double iconXs = 16.0;
  static const double iconSm = 20.0;
  static const double iconMd = 24.0;
  static const double iconLg = 32.0;
  static const double iconXl = 40.0;
  static const double iconXxl = 48.0;

  // Avatar Sizes
  static const double avatarSmall = 32.0;
  static const double avatarMedium = 40.0;
  static const double avatarLarge = 56.0;
  static const double avatarXLarge = 72.0;

  // Input Field Heights
  static const double inputHeight = 48.0;
  static const double inputHeightSmall = 40.0;
  static const double inputHeightLarge = 56.0;

  // Card and Container dimensions
  static const double cardElevation = 2.0;
  static const double cardElevationHover = 4.0;
  static const double modalElevation = 8.0;

  // Border Radius
  static const double radiusXs = 4.0;
  static const double radiusSm = 8.0;
  static const double radiusMd = 12.0;
  static const double radiusLg = 16.0;
  static const double radiusXl = 20.0;
  static const double radiusXxl = 24.0;
  static const double radiusRound = 999.0; // For fully rounded elements

  // Border Widths
  static const double borderThin = 1.0;
  static const double borderMedium = 2.0;
  static const double borderThick = 3.0;

  // AppBar and Navigation
  static const double appBarHeight = 56.0;
  static const double tabBarHeight = 48.0;
  static const double bottomNavHeight = 60.0;
  static const double toolbarHeight = 56.0;

  // List Items
  static const double listItemHeight = 56.0;
  static const double listItemHeightSmall = 48.0;
  static const double listItemHeightLarge = 72.0;

  // Divider
  static const double dividerThickness = 1.0;
  static const double dividerIndent = 16.0;

  // Touch targets (minimum 48dp for accessibility)
  static const double minTouchTarget = 48.0;

  // Screen breakpoints for responsive design
  static const double mobileBreakpoint = 600.0;
  static const double tabletBreakpoint = 1024.0;
  static const double desktopBreakpoint = 1440.0;

  // Container max widths
  static const double maxContentWidth = 1200.0;
  static const double maxFormWidth = 400.0;
  static const double maxCardWidth = 600.0;
}

/// App Insets - Predefined EdgeInsets for consistent spacing
class AppInsets {
  // Private constructor to prevent instantiation
  AppInsets._();

  // All sides equal
  static const EdgeInsets xs = EdgeInsets.all(AppSpacing.xs);
  static const EdgeInsets sm = EdgeInsets.all(AppSpacing.sm);
  static const EdgeInsets md = EdgeInsets.all(AppSpacing.md);
  static const EdgeInsets lg = EdgeInsets.all(AppSpacing.lg);
  static const EdgeInsets xl = EdgeInsets.all(AppSpacing.xl);
  static const EdgeInsets xxl = EdgeInsets.all(AppSpacing.xxl);

  // Horizontal only
  static const EdgeInsets horizontalXs = EdgeInsets.symmetric(horizontal: AppSpacing.xs);
  static const EdgeInsets horizontalSm = EdgeInsets.symmetric(horizontal: AppSpacing.sm);
  static const EdgeInsets horizontalMd = EdgeInsets.symmetric(horizontal: AppSpacing.md);
  static const EdgeInsets horizontalLg = EdgeInsets.symmetric(horizontal: AppSpacing.lg);
  static const EdgeInsets horizontalXl = EdgeInsets.symmetric(horizontal: AppSpacing.xl);
  static const EdgeInsets horizontalXxl = EdgeInsets.symmetric(horizontal: AppSpacing.xxl);

  // Vertical only
  static const EdgeInsets verticalXs = EdgeInsets.symmetric(vertical: AppSpacing.xs);
  static const EdgeInsets verticalSm = EdgeInsets.symmetric(vertical: AppSpacing.sm);
  static const EdgeInsets verticalMd = EdgeInsets.symmetric(vertical: AppSpacing.md);
  static const EdgeInsets verticalLg = EdgeInsets.symmetric(vertical: AppSpacing.lg);
  static const EdgeInsets verticalXl = EdgeInsets.symmetric(vertical: AppSpacing.xl);
  static const EdgeInsets verticalXxl = EdgeInsets.symmetric(vertical: AppSpacing.xxl);

  // Top only
  static const EdgeInsets topXs = EdgeInsets.only(top: AppSpacing.xs);
  static const EdgeInsets topSm = EdgeInsets.only(top: AppSpacing.sm);
  static const EdgeInsets topMd = EdgeInsets.only(top: AppSpacing.md);
  static const EdgeInsets topLg = EdgeInsets.only(top: AppSpacing.lg);
  static const EdgeInsets topXl = EdgeInsets.only(top: AppSpacing.xl);
  static const EdgeInsets topXxl = EdgeInsets.only(top: AppSpacing.xxl);

  // Bottom only
  static const EdgeInsets bottomXs = EdgeInsets.only(bottom: AppSpacing.xs);
  static const EdgeInsets bottomSm = EdgeInsets.only(bottom: AppSpacing.sm);
  static const EdgeInsets bottomMd = EdgeInsets.only(bottom: AppSpacing.md);
  static const EdgeInsets bottomLg = EdgeInsets.only(bottom: AppSpacing.lg);
  static const EdgeInsets bottomXl = EdgeInsets.only(bottom: AppSpacing.xl);
  static const EdgeInsets bottomXxl = EdgeInsets.only(bottom: AppSpacing.xxl);

  // Left only
  static const EdgeInsets leftXs = EdgeInsets.only(left: AppSpacing.xs);
  static const EdgeInsets leftSm = EdgeInsets.only(left: AppSpacing.sm);
  static const EdgeInsets leftMd = EdgeInsets.only(left: AppSpacing.md);
  static const EdgeInsets leftLg = EdgeInsets.only(left: AppSpacing.lg);
  static const EdgeInsets leftXl = EdgeInsets.only(left: AppSpacing.xl);
  static const EdgeInsets leftXxl = EdgeInsets.only(left: AppSpacing.xxl);

  // Right only
  static const EdgeInsets rightXs = EdgeInsets.only(right: AppSpacing.xs);
  static const EdgeInsets rightSm = EdgeInsets.only(right: AppSpacing.sm);
  static const EdgeInsets rightMd = EdgeInsets.only(right: AppSpacing.md);
  static const EdgeInsets rightLg = EdgeInsets.only(right: AppSpacing.lg);
  static const EdgeInsets rightXl = EdgeInsets.only(right: AppSpacing.xl);
  static const EdgeInsets rightXxl = EdgeInsets.only(right: AppSpacing.xxl);

  // Common component-specific insets
  static const EdgeInsets button = EdgeInsets.symmetric(
    horizontal: AppSpacing.lg,
    vertical: AppSpacing.md,
  );

  static const EdgeInsets card = horizontalXxl;
  
  static const EdgeInsets listItem = EdgeInsets.symmetric(
    horizontal: AppSpacing.md,
    vertical: AppSpacing.sm,
  );

  static const EdgeInsets screenPadding = EdgeInsets.all(AppSpacing.md);
  
  static const EdgeInsets modalPadding = EdgeInsets.all(AppSpacing.lg);
}