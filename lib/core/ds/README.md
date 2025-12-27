# Cajueiro Fala - Design System

This design system provides a consistent visual language and component library for the Cajueiro Fala app.

## Overview

The design system is organized into the following modules:

- **AppTheme**: Complete Material Design 3 theme configuration
- **AppColors**: Color palette and semantic color definitions
- **AppTypography**: Text styles and typography scale
- **AppSpacing**: Spacing system and layout dimensions

## Usage

### Import the Design System

```dart
import 'package:cajueiro_fala_app/core/ds/design_system.dart';
```

### Using Colors

```dart
// Using predefined colors
Container(
  color: AppColors.primary,
  child: Text(
    'Hello',
    style: TextStyle(color: AppColors.textOnPrimary),
  ),
)

// Using semantic colors
Container(
  color: AppColors.success, // For success states
  color: AppColors.error,   // For error states
  color: AppColors.warning, // For warning states
)
```

### Using Typography

```dart
// Using predefined text styles
Text(
  'Headline',
  style: AppTypography.headlineLarge,
)

// Using context extensions (requires BuildContext)
Text(
  'Body text',
  style: context.bodyLarge,
)

// Customizing text styles
Text(
  'Custom text',
  style: context.titleMedium.copyWith(
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  ),
)
```

### Using Spacing

```dart
// Using spacing constants
SizedBox(height: AppSpacing.md), // 16dp
Padding(
  padding: EdgeInsets.all(AppSpacing.lg), // 24dp
)

// Using predefined EdgeInsets
Padding(
  padding: AppInsets.screenPadding, // Standard screen padding
)

// Using component-specific insets
Padding(
  padding: AppInsets.button, // Standard button padding
)
```

### Using Dimensions

```dart
// Button heights
SizedBox(
  height: AppDimensions.buttonHeightLarge,
  child: ElevatedButton(...)
)

// Icon sizes
Icon(
  Icons.star,
  size: AppDimensions.iconLg,
)

// Border radius
Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(AppDimensions.radiusMd),
  ),
)
```

### Using Theme Extensions

```dart
// Context extensions for easy access
Widget build(BuildContext context) {
  return Container(
    color: context.colorScheme.surface,
    child: Text(
      'Hello World',
      style: context.textTheme.headlineSmall,
    ),
  );
}

// Check theme mode
if (context.isDarkMode) {
  // Dark theme specific logic
}
```

## Color Palette

### Primary Colors
- **Primary**: `#2E7D32` (Forest Green) - Main brand color
- **Secondary**: `#8BC34A` (Light Green) - Supporting brand color
- **Tertiary**: `#FF8F00` (Amber Orange) - Accent color

### Semantic Colors
- **Error**: `#D32F2F` - For error states and destructive actions
- **Warning**: `#FF9800` - For warning states and cautions
- **Success**: `#388E3C` - For success states and positive actions
- **Info**: `#1976D2` - For informational content

### Text Colors
- **Primary Text**: `#212121` - Main content text
- **Secondary Text**: `#757575` - Supporting text and labels
- **Disabled Text**: `#BDBDBD` - Disabled content text

## Typography Scale

The typography follows Material Design 3 guidelines with the following hierarchy:

### Display
- **Display Large**: 57sp - Hero content
- **Display Medium**: 45sp - Large headers
- **Display Small**: 36sp - Section headers

### Headlines
- **Headline Large**: 32sp - Page titles
- **Headline Medium**: 28sp - Section titles
- **Headline Small**: 24sp - Subsection titles

### Titles
- **Title Large**: 22sp - Card titles
- **Title Medium**: 16sp - List item titles
- **Title Small**: 14sp - Dense list items

### Body
- **Body Large**: 16sp - Main body text
- **Body Medium**: 14sp - Supporting text
- **Body Small**: 12sp - Captions and helper text

### Labels
- **Label Large**: 14sp - Button text
- **Label Medium**: 12sp - Small buttons and tabs
- **Label Small**: 11sp - Dense components

## Spacing System

Based on an 8dp grid system:

- **xs**: 4dp - Minimal spacing
- **sm**: 8dp - Small spacing
- **md**: 16dp - Medium spacing (default)
- **lg**: 24dp - Large spacing
- **xl**: 32dp - Extra large spacing
- **xxl**: 40dp - Extra extra large spacing
- **xxxl**: 48dp - Maximum spacing

## Component Examples

### Buttons

```dart
// Primary button
ElevatedButton(
  onPressed: () {},
  child: Text('Primary Action'),
)

// Secondary button
OutlinedButton(
  onPressed: () {},
  child: Text('Secondary Action'),
)

// Text button
TextButton(
  onPressed: () {},
  child: Text('Text Action'),
)
```

### Input Fields

```dart
TextFormField(
  decoration: InputDecoration(
    labelText: 'Email',
    hintText: 'Enter your email',
    prefixIcon: Icon(Icons.email),
  ),
)
```

### Cards

```dart
Card(
  child: Padding(
    padding: AppInsets.card,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Card Title',
          style: context.titleMedium,
        ),
        SizedBox(height: AppSpacing.sm),
        Text(
          'Card content goes here...',
          style: context.bodyMedium,
        ),
      ],
    ),
  ),
)
```

## Customization

### Adding New Colors

To add new colors, update `AppColors`:

```dart
class AppColors {
  // Add your custom colors
  static const customColor = Color(0xFF123456);
}
```

### Adding New Text Styles

To add new text styles, update `AppTypography`:

```dart
class AppTypography {
  // Add your custom text style
  static const customStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
}
```

### Modifying Theme

To modify the theme, update `AppTheme.lightTheme` or `AppTheme.darkTheme`:

```dart
static ThemeData get lightTheme {
  return ThemeData(
    // Your custom theme modifications
  );
}
```

## Best Practices

1. **Always use design system colors** instead of hardcoded colors
2. **Use semantic colors** for appropriate states (error, success, warning, info)
3. **Follow the spacing system** for consistent layouts
4. **Use context extensions** for cleaner code when accessing theme properties
5. **Test both light and dark themes** during development
6. **Use appropriate text styles** from the typography scale
7. **Maintain accessibility** by ensuring proper contrast ratios

## Dark Theme Support

The design system includes automatic dark theme support. The app will automatically switch between light and dark themes based on system preferences, or you can set a specific theme mode in your `MaterialApp`:

```dart
MaterialApp(
  theme: AppTheme.lightTheme,
  darkTheme: AppTheme.darkTheme,
  themeMode: ThemeMode.system, // or ThemeMode.light / ThemeMode.dark
)
```