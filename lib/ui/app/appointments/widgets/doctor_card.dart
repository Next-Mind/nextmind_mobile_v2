import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final double rating;
  final String description;
  final String bookText;

  const DoctorCard({
    super.key,
    required this.name,
    required this.specialty,
    required this.rating,
    required this.description,
    required this.bookText,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * .72;

    return SizedBox(
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(Dimens.mediumPadding),
          child: Row(
            children: [
              const CircleAvatar(radius: 30, child: Icon(Icons.person)),
              const SizedBox(width: Dimens.mediumPadding),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      specialty,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(Icons.star, size: 16),
                        const SizedBox(width: 4),
                        Text(rating.toStringAsFixed(1)),
                        const Spacer(),
                        FilledButton.tonal(
                          onPressed: () {},
                          child: Text(bookText),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
