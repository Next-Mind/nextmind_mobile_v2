import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nextmind_mobile_v2/ui/app/chat/viewmodels/chat_viewmodel.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({
    super.key,
    required this.viewModel,
  });

  final ChatViewmodel viewModel;

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  final TextEditingController _controller = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: widget.viewModel,
      builder: (context, _) {
        final isSending = widget.viewModel.isSending;
        final l10n = AppLocalizations.of(context)!;
        return Container(
          padding: const EdgeInsets.all(12),
          color: theme.colorScheme.surfaceContainerHighest,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceContainerLowest,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          enabled: !isSending,
                          decoration: InputDecoration(
                            hintText: l10n.chatMessageHint,
                            border: InputBorder.none,
                          ),
                          onSubmitted: (_) => _sendText(),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.attach_file, size: 20),
                        onPressed: isSending ? null : _pickFile,
                      ),
                      IconButton(
                        icon: const Icon(Icons.camera_alt, size: 20),
                        onPressed: isSending
                            ? null
                            : () => _showImageSourceSelector(l10n),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.send,
                    color: theme.colorScheme.onPrimary,
                    size: 20,
                  ),
                  onPressed: isSending ? null : _sendText,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _sendText() async {
    final text = _controller.text;
    final result = await widget.viewModel.sendText(text);
    result.fold((_) {
      _controller.clear();
    }, (error) {
      if (!mounted) return;
      _showSnackBar(error);
    });
  }

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null || result.files.isEmpty) return;

    final file = result.files.first;
    final path = file.path;
    if (path == null || path.isEmpty) {
      _showSnackBar(AppLocalizations.of(context)!.chatInvalidFileMessage);
      return;
    }

    final response = await widget.viewModel.sendFile(path, fileName: file.name);
    response.fold((_) {}, (error) {
      if (!mounted) return;
      _showSnackBar(error);
    });
  }

  Future<void> _showImageSourceSelector(AppLocalizations l10n) async {
    if (!mounted) return;
    await showModalBottomSheet<void>(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: Text(l10n.chatCameraOption),
              onTap: () {
                Navigator.of(ctx).pop();
                _pickImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: Text(l10n.chatGalleryOption),
              onTap: () {
                Navigator.of(ctx).pop();
                _pickImage(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final image = await _imagePicker.pickImage(source: source);
    if (image == null) return;

    final response = await widget.viewModel.sendFile(
      image.path,
      fileName: image.name,
    );

    response.fold((_) {}, (error) {
      if (!mounted) return;
      _showSnackBar(error);
    });
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
