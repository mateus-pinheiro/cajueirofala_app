import 'package:cajueiro_fala_app/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';

import '../../core/ds/components/components.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({
    super.key,
    required viewModel,
  });

  final List<String> comments = const [
    'Ótimo aplicativo! Muito útil para a comunidade.',
    'Gostaria de ver mais funcionalidades no futuro.',
    'A interface é muito amigável e fácil de usar.',
    'Seria interessante ter notificações para novos comentários.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDS(
        title: 'Voz Ativa',
        subtitle: 'Comentários enviados',
      ),
      body: comments.isEmpty
          ? const Center(
              child: Text(
                'Nenhum comentário registrado',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: comments.length,
              itemBuilder: (context, index) {
                return CardWidget.comment(
                  key: Key('comment_card_$index'),
                  comment: comments[index],
                  totalLikes: 0,
                  files: [],
                  date: DateTime.now(),
                );
              },
            ),
    );
  }
}
