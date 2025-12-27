import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../app_typography.dart';
import '../app_spacing.dart';

/// Custom AppBar component for Cajueiro Fala app
/// Displays "Voz Ativa" with subtitle "Análises da comunidade"
class AppBarDS extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDS({
    super.key,
    required this.title,
    required this.subtitle,
    this.onMenuPressed,
    this.backgroundColor,
    this.elevation,
    this.showLogo = true,
    this.showSubtitle = true,
  });

  /// Title of the AppBar
  final String title;

  ///  Subtitle of the AppBar
  final String subtitle;

  /// Callback for when the menu button is pressed
  final VoidCallback? onMenuPressed;

  /// Background color of the app bar
  final Color? backgroundColor;

  /// Elevation of the app bar
  final double? elevation;

  /// Whether to show the logo
  final bool showLogo;

  /// Whether to show the subtitle
  final bool showSubtitle;

  @override
  Size get preferredSize => Size.fromHeight(showSubtitle ? 80.0 : 64.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? AppColors.white,
      elevation: elevation ?? 0.5,
      shadowColor: AppColors.grey300,
      automaticallyImplyLeading: false,
      toolbarHeight: preferredSize.height,
      title: Row(
        children: [
          // Logo
          if (showLogo) ...[
            Container(
              width: 48,
              height: 48,
              decoration: const BoxDecoration(
                color: AppColors.secondary, // Orange color from design system
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.campaign, // Megaphone icon representing "Voz Ativa"
                color: AppColors.white,
                size: 24,
              ),
            ),
            const SizedBox(width: AppSpacing.md),
          ],

          // Title and Subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Main Title
                Text(
                  title,
                  style: AppTypography.headlineSmall.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),

                // Subtitle
                if (showSubtitle) ...[
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.grey600,
                      fontWeight: FontWeight.w400,
                      height: 1.1,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Variant of AppBarDS with compact height (no subtitle)
class AppBarDSCompact extends AppBarDS {
  const AppBarDSCompact({
    super.key,
    required super.title,
    super.subtitle = '',
    super.onMenuPressed,
    super.backgroundColor,
    super.elevation,
    super.showLogo = true,
  }) : super(showSubtitle: false);
}

/// Variant of AppBarDS without logo
class AppBarDSNoLogo extends AppBarDS {
  const AppBarDSNoLogo({
    super.key,
    required super.title,
    required super.subtitle,
    super.onMenuPressed,
    super.backgroundColor,
    super.elevation,
    super.showSubtitle = true,
  }) : super(showLogo: false);
}
