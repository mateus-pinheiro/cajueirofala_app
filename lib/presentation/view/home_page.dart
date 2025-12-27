import 'package:cajueiro_fala_app/presentation/viewmodel/home_viewmodel.dart';
import 'package:cajueiro_fala_app/presentation/viewmodel/state/home_state.dart';
import 'package:cajueiro_fala_app/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.viewModel,
  });

  final HomeViewmodel viewModel;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewmodel, HomeState>(
      bloc: widget.viewModel,
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: _HomePageView(),
            ),
          ),
        );
      },
    );
  }
}

/// The main view for the Home Page, containing a vertical PageView
/// with welcome and new comment views.
class _HomePageView extends StatefulWidget {
  @override
  State<_HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<_HomePageView> {
  late final List<Widget> _pages;

  final PageController _pageController = PageController();

  void updateView() {
    setState(() {
      _pageController.animateToPage(
        1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      _HomeWelcomeView(
        onCreateCommentPressed: () => updateView(),
      ),
      _HomeNewCommentView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _pageController,
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: _pages.length,
        itemBuilder: (context, index) => _pages[index]);
  }
}

/// View displaying a welcome message and prompt to create a comment.
/// Used as the first page in the Home Page's PageView.
class _HomeWelcomeView extends StatefulWidget {
  final VoidCallback onCreateCommentPressed;

  const _HomeWelcomeView({
    required this.onCreateCommentPressed,
  });

  @override
  State<_HomeWelcomeView> createState() => _HomeWelcomeViewState();
}

class _HomeWelcomeViewState extends State<_HomeWelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CardWidget.welcome(),
        ElevatedButton(
          child: const Text('Criar um comentário'),
          onPressed: () => widget.onCreateCommentPressed(),
        )
      ],
    );
  }
}

/// View for creating and submitting a new comment.
/// Used as the second page in the Home Page's PageView.
class _HomeNewCommentView extends StatefulWidget {
  @override
  State<_HomeNewCommentView> createState() => _HomeNewCommentViewState();
}

class _HomeNewCommentViewState extends State<_HomeNewCommentView> {
  @override
  Widget build(BuildContext context) {
    return CardWidget.newComment();
  }
}
