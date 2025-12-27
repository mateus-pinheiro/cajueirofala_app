import 'package:cajueiro_fala_app/presentation/view/main_page.dart';
import 'package:flutter/material.dart';
import 'core/ds/design_system.dart';

void main() {
  runApp(const CajueiroFalaApp());
}

class CajueiroFalaApp extends StatelessWidget {
  const CajueiroFalaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cajueiro Fala',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode
          .system, // Automatically switches between light/dark based on system
      home: const MainPage(),
    );
  }
}
