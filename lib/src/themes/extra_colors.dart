part of 'themes.dart';

class ExtraColors extends ThemeExtension<ExtraColors> {
  final Color? brandColor;

  const ExtraColors({required this.brandColor});

  @override
  ThemeExtension<ExtraColors> copyWith({
    Color? brandColor,
  }) =>
      ExtraColors(
        brandColor: brandColor ?? this.brandColor,
      );

  @override
  ThemeExtension<ExtraColors> lerp(
          covariant ThemeExtension<ExtraColors>? other, double t) =>
      other is! ExtraColors
          ? this
          : ExtraColors(
              brandColor: Color.lerp(brandColor, other.brandColor, t),
            );
}
