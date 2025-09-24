import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class AppointmentBannerCarousel extends StatefulWidget {
  const AppointmentBannerCarousel({super.key});

  @override
  State<AppointmentBannerCarousel> createState() =>
      _AppointmentBannerCarouselState();
}

class _AppointmentBannerCarouselState extends State<AppointmentBannerCarousel> {
  final controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    final items = [
      _BannerCard(
        title: t.banner1Title,
        subtitle: t.banner1Subtitle,
        buttonText: t.bookNowLabel,
      ),
      _BannerCard(
        title: t.banner2Title,
        subtitle: t.banner2Subtitle,
        buttonText: t.bookNowLabel,
      ),
    ];

    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: PageView.builder(
            controller: controller,
            onPageChanged: (i) => setState(() => index = i),
            itemCount: items.length,
            itemBuilder: (_, i) => items[i],
          ),
        ),
        const SizedBox(height: Dimens.smallPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            items.length,
            (i) => AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 8,
              width: index == i ? 16 : 8,
              decoration: BoxDecoration(
                color: index == i
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).dividerColor,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _BannerCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;

  const _BannerCard({
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(Dimens.largePadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary.withOpacity(.85),
              Theme.of(context).colorScheme.primaryContainer.withOpacity(.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white.withOpacity(.9),
              ),
            ),
            const SizedBox(height: 12),
            FilledButton.tonal(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () {},
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }
}
