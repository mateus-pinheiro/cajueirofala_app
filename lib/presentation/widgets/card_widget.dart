import 'package:cajueiro_fala_app/core/ds/design_system.dart';
import 'package:flutter/material.dart';

abstract class CardWidget extends Widget {
  const CardWidget({super.key});

  factory CardWidget.welcome({Key? key}) => _CardWidgetWelcome(key: key);
  factory CardWidget.newComment({Key? key}) => _CardWidgetNewComment(key: key);
  factory CardWidget.comment({
    Key? key,
    required String comment,
    required int totalLikes,
    required List<String> files,
    required DateTime date,
  }) =>
      _CardWidgetComment(
        comment: comment,
        totalLikes: totalLikes,
        files: files,
        date: date,
      );
}

/// A card widget for displaying a welcome message.
class _CardWidgetWelcome extends StatefulWidget implements CardWidget {
  const _CardWidgetWelcome({super.key});

  @override
  State<_CardWidgetWelcome> createState() => _CardWidgetWelcomeState();
}

class _CardWidgetWelcomeState extends State<_CardWidgetWelcome> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: SizedBox(
                child: Column(
                  spacing: 16,
                  children: [
                    const Text(
                      'Bem vindo ao Voz Ativa!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Compartilhe suas opiniões, ideias e sugestões sobre a região de Cajueiro da Praia/Barra Grande do Piauí. Sua voz é importante para nós!',
                      style: context.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 16,
                      children: [
                        const Icon(
                          Icons.thumb_up,
                          color: AppColors.primary,
                          size: 24,
                        ),
                        const Icon(
                          Icons.comment,
                          color: AppColors.primary, //
                          size: 24,
                        ),
                        const Icon(
                          Icons.share,
                          color: AppColors.primary,
                          size: 24,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}

/// A card widget for displaying comments.
/// Users can add comments and attach files.
class _CardWidgetNewComment extends StatefulWidget implements CardWidget {
  const _CardWidgetNewComment({super.key});

  @override
  State<_CardWidgetNewComment> createState() => _CardWidgetNewCommentState();
}

class _CardWidgetNewCommentState extends State<_CardWidgetNewComment> {
  final TextEditingController _commentController = TextEditingController();
  final List<String> _attachedFiles = [];

  void _attachFile() {
    setState(() {
      _attachedFiles.add('file_${_attachedFiles.length + 1}.pdf');
    });
  }

  void _removeFile(int index) {
    setState(() {
      _attachedFiles.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) => Card(
        key: widget.key,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              const Text(
                'Aqui você escreve e\n envia seu comentário',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'O que você acha que pode melhorar na sua cidade? Pode enviar fotos para apoiar seu comentário também.',
                style: context.bodyLarge,
              ),
              Expanded(
                child: PulsingTextField(),
              ),
              if (_attachedFiles.isNotEmpty) ...[
                const Text(
                  'Arquivos anexados:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ..._attachedFiles.asMap().entries.map((entry) {
                  return ListTile(
                    leading: const Icon(Icons.attach_file),
                    title: Text(entry.value),
                    trailing: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => _removeFile(entry.key),
                    ),
                  );
                }),
              ],
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: _attachFile,
                    icon: const Icon(Icons.camera),
                    label: const Text('Enviar foto'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle comment submission logic here
                    },
                    label: const Text(
                      'Enviar comentário',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

/// A card widget for displaying a welcome message.
class _CardWidgetComment extends StatefulWidget implements CardWidget {
  final String comment;
  final int totalLikes;
  final List<String> files;
  final DateTime date;

  const _CardWidgetComment({
    required this.comment,
    required this.totalLikes,
    required this.files,
    required this.date,
  });

  @override
  State<_CardWidgetComment> createState() => _CardWidgetCommentState();
}

class _CardWidgetCommentState extends State<_CardWidgetComment> {
  @override
  Widget build(BuildContext context) => Card(
        key: widget.key,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 8,
            children: [
              Text(
                widget.comment,
                style: context.bodyLarge,
              ),
              Text(
                'Curtidas: ${widget.totalLikes} • Data: ${widget.date.toLocal().toString().split(' ')[0]}',
                style: context.bodySmall.copyWith(color: Colors.grey),
              ),
              if (widget.files.isNotEmpty) ...[
                const Text(
                  'Arquivos anexados:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                ...widget.files.map((file) => ListTile(
                      leading: const Icon(Icons.attach_file),
                      title: Text(file),
                    )),
              ],
            ],
          ),
        ),
      );
}

// class PulsingTextField extends StatefulWidget {
//   const PulsingTextField({super.key});

//   @override
//   State<PulsingTextField> createState() => _PulsingTextFieldState();
// }

// class _PulsingTextFieldState extends State<PulsingTextField> {
//   bool _highlight = false;
//   bool _hasFocus = false;
//   final _focusNode = FocusNode();

//   @override
//   void initState() {
//     super.initState();

//     _focusNode.addListener(() {
//       setState(() => _hasFocus = _focusNode.hasFocus);
//     });

//     _startPulse();
//   }

//   Future<void> _startPulse() async {
//     while (mounted) {
//       if (!_hasFocus) {
//         setState(() => _highlight = !_highlight);
//       }
//       await Future.delayed(const Duration(milliseconds: 900));
//     }
//   }

//   @override
//   void dispose() {
//     _focusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 100),
//       curve: Curves.easeInOut,
//       child: TextField(
//         textAlignVertical: TextAlignVertical.top,
//         focusNode: _focusNode,
//         decoration: InputDecoration(
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: _highlight && !_hasFocus
//                   ? AppColors.darkBackground.withOpacity(0.8)
//                   : Colors.grey.shade400,
//             ),
//           ),
//           contentPadding: EdgeInsets.all(16),
//           focusedBorder: const OutlineInputBorder(
//             borderSide: BorderSide(color: AppColors.darkBackground),

//           ),

//         ),
//         maxLines: null,
//         expands: true,
//         keyboardType: TextInputType.multiline,
//         maxLength: 500,
//       ),
//     );
//   }
// }

class PulsingTextField extends StatefulWidget {
  const PulsingTextField({super.key});

  @override
  State<PulsingTextField> createState() => _PulsingTextFieldState();
}

class _PulsingTextFieldState extends State<PulsingTextField>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacity;
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _opacity = Tween<double>(begin: 0.05, end: 0.12)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.stop();
      } else {
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _opacity,
      builder: (_, __) {
        return TextField(
          focusNode: _focusNode,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15),
            filled: true,
            fillColor: AppColors.primary.withOpacity(_opacity.value),
            // enabledBorder: OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Colors.green.withOpacity(0.9),
            //   ),
            // ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white70),
            ),
          ),
          maxLines: null,
          expands: true,
          keyboardType: TextInputType.multiline,
          maxLength: 500,
        );
      },
    );
  }
}

              // controller: _commentController,
              //     textAlignVertical: TextAlignVertical.top,
              //     decoration: const InputDecoration(
              //         border: OutlineInputBorder(),
              //         contentPadding: EdgeInsets.all(15)),
              //     maxLines: null,
              //     expands: true,
              //     keyboardType: TextInputType.multiline,
              //     maxLength: 500,