import 'package:cajueiro_fala_app/presentation/viewmodel/analytics_viewmodel.dart';
import 'package:cajueiro_fala_app/presentation/viewmodel/state/analytics_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/ds/components/components.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({
    super.key,
    required this.viewModel,
  });

  final AnalyticsViewmodel viewModel;

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  _AnalyticsPageState();
  final TextEditingController _commentController = TextEditingController();
  final List<String> _attachedFiles = [];

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

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
  Widget build(BuildContext context) {
    return BlocBuilder<AnalyticsViewmodel, AnalyticsState>(
        bloc: widget.viewModel,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBarDS(
              title: 'Voz Ativa',
              subtitle: 'Análises da comunidade',
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Nova Mensagem',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          controller: _commentController,
                          decoration: const InputDecoration(
                            labelText: 'Comentário',
                            border: OutlineInputBorder(),
                          ),
                          maxLines: 5,
                        ),
                        const SizedBox(height: 16),
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
                          const SizedBox(height: 16),
                        ],
                        ElevatedButton.icon(
                          onPressed: _attachFile,
                          icon: const Icon(Icons.attach_file),
                          label: const Text('Anexar Arquivo'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
