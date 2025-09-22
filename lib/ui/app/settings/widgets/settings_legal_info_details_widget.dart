import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class LegalDetailScreen extends StatelessWidget {
  final String title;
  final String content;

  const LegalDetailScreen({
    required this.title,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(Dimens.mediumPadding),
        child: Text(content, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
