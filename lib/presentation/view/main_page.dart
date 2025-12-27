import 'package:flutter/material.dart';

import '../viewmodel/viewmodel.dart';
import 'view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(
      viewModel: HomeViewmodel(),
    ),
    // AnalyticsPage(
    //   viewModel: AnalyticsViewmodel(),
    // ),
    CommentsPage(
      viewModel: CommentsViewmodel(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        enableFeedback: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.analytics),
          //   label: 'Analytics',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: 'Comentários',
          ),
        ],
      ),
    );
  }
}
