import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff006e2b),
      surfaceTint: Color(0xff006e2b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff47b65f),
      onPrimaryContainer: Color(0xff004217),
      secondary: Color(0xff006d3c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3ca668),
      onSecondaryContainer: Color(0xff003419),
      tertiary: Color(0xff006672),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff008190),
      onTertiaryContainer: Color(0xfff7feff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff1c1b1b),
      onSurfaceVariant: Color(0xff444748),
      outline: Color(0xff747878),
      outlineVariant: Color(0xffc4c7c7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xff6fdd81),
      primaryFixed: Color(0xff8bfa9a),
      onPrimaryFixed: Color(0xff002108),
      primaryFixedDim: Color(0xff6fdd81),
      onPrimaryFixedVariant: Color(0xff00531f),
      secondaryFixed: Color(0xff8ff8b2),
      onSecondaryFixed: Color(0xff00210e),
      secondaryFixedDim: Color(0xff73db98),
      onSecondaryFixedVariant: Color(0xff00522c),
      tertiaryFixed: Color(0xff9bf0ff),
      onTertiaryFixed: Color(0xff001f24),
      tertiaryFixedDim: Color(0xff70d5e6),
      onTertiaryFixedVariant: Color(0xff004f58),
      surfaceDim: Color(0xffddd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004016),
      surfaceTint: Color(0xff006e2b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff007e33),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003f20),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff007e46),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003c44),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff007887),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff111111),
      onSurfaceVariant: Color(0xff333737),
      outline: Color(0xff4f5354),
      outlineVariant: Color(0xff6a6e6e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xff6fdd81),
      primaryFixed: Color(0xff007e33),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff006326),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff007e46),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff006235),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff007887),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff005e69),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc9c6c5),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3f2),
      surfaceContainer: Color(0xffebe7e7),
      surfaceContainerHigh: Color(0xffdfdcdb),
      surfaceContainerHighest: Color(0xffd4d1d0),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003411),
      surfaceTint: Color(0xff006e2b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff005520),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003419),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff00552d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003138),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff00515b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff292d2d),
      outlineVariant: Color(0xff464a4a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xff6fdd81),
      primaryFixed: Color(0xff005520),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003c14),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff00552d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003b1e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff00515b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003940),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbbb8b7),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f0ef),
      surfaceContainer: Color(0xffe5e2e1),
      surfaceContainerHigh: Color(0xffd7d4d3),
      surfaceContainerHighest: Color(0xffc9c6c5),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff6fdd81),
      surfaceTint: Color(0xff6fdd81),
      onPrimary: Color(0xff003913),
      primaryContainer: Color(0xff47b65f),
      onPrimaryContainer: Color(0xff004217),
      secondary: Color(0xff73db98),
      onSecondary: Color(0xff00391c),
      secondaryContainer: Color(0xff3ca668),
      onSecondaryContainer: Color(0xff003419),
      tertiary: Color(0xff70d5e6),
      onTertiary: Color(0xff00363d),
      tertiaryContainer: Color(0xff2f9eae),
      onTertiaryContainer: Color(0xff001519),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff141313),
      onSurface: Color(0xffe5e2e1),
      onSurfaceVariant: Color(0xffc4c7c7),
      outline: Color(0xff8e9192),
      outlineVariant: Color(0xff444748),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff006e2b),
      primaryFixed: Color(0xff8bfa9a),
      onPrimaryFixed: Color(0xff002108),
      primaryFixedDim: Color(0xff6fdd81),
      onPrimaryFixedVariant: Color(0xff00531f),
      secondaryFixed: Color(0xff8ff8b2),
      onSecondaryFixed: Color(0xff00210e),
      secondaryFixedDim: Color(0xff73db98),
      onSecondaryFixedVariant: Color(0xff00522c),
      tertiaryFixed: Color(0xff9bf0ff),
      onTertiaryFixed: Color(0xff001f24),
      tertiaryFixedDim: Color(0xff70d5e6),
      onTertiaryFixedVariant: Color(0xff004f58),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1b),
      surfaceContainer: Color(0xff201f1f),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353434),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff85f495),
      surfaceTint: Color(0xff6fdd81),
      onPrimary: Color(0xff002d0d),
      primaryContainer: Color(0xff47b65f),
      onPrimaryContainer: Color(0xff001a05),
      secondary: Color(0xff89f2ac),
      onSecondary: Color(0xff002d15),
      secondaryContainer: Color(0xff3ca668),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xff87ebfd),
      onTertiary: Color(0xff002a30),
      tertiaryContainer: Color(0xff2f9eae),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffdadddd),
      outline: Color(0xffafb2b3),
      outlineVariant: Color(0xff8e9191),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff00541f),
      primaryFixed: Color(0xff8bfa9a),
      onPrimaryFixed: Color(0xff001504),
      primaryFixedDim: Color(0xff6fdd81),
      onPrimaryFixedVariant: Color(0xff004016),
      secondaryFixed: Color(0xff8ff8b2),
      onSecondaryFixed: Color(0xff001507),
      secondaryFixedDim: Color(0xff73db98),
      onSecondaryFixedVariant: Color(0xff003f20),
      tertiaryFixed: Color(0xff9bf0ff),
      onTertiaryFixed: Color(0xff001418),
      tertiaryFixedDim: Color(0xff70d5e6),
      onTertiaryFixedVariant: Color(0xff003c44),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff454444),
      surfaceContainerLowest: Color(0xff070707),
      surfaceContainerLow: Color(0xff1e1d1d),
      surfaceContainer: Color(0xff282828),
      surfaceContainerHigh: Color(0xff333232),
      surfaceContainerHighest: Color(0xff3e3d3d),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc2ffc4),
      surfaceTint: Color(0xff6fdd81),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff6bd97d),
      onPrimaryContainer: Color(0xff000f02),
      secondary: Color(0xffbeffce),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff6fd794),
      onSecondaryContainer: Color(0xff000f04),
      tertiary: Color(0xffcff7ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff6cd1e2),
      onTertiaryContainer: Color(0xff000e10),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff141313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffeef0f1),
      outlineVariant: Color(0xffc0c3c4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff00541f),
      primaryFixed: Color(0xff8bfa9a),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff6fdd81),
      onPrimaryFixedVariant: Color(0xff001504),
      secondaryFixed: Color(0xff8ff8b2),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff73db98),
      onSecondaryFixedVariant: Color(0xff001507),
      tertiaryFixed: Color(0xff9bf0ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff70d5e6),
      onTertiaryFixedVariant: Color(0xff001418),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff51504f),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff201f1f),
      surfaceContainer: Color(0xff313030),
      surfaceContainerHigh: Color(0xff3c3b3b),
      surfaceContainerHighest: Color(0xff484646),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
