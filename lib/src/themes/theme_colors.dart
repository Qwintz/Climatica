part of 'themes.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color primary;
  final Color black;
  final Color darkGrey;
  final Color grey;
  final Color lightGrey;
  final Color white;
  final Color red;
  final Color orange;
  final Color yellow;
  final Color green;
  final Color blue;
  final Color purple;
  final Color? sunny;
  final Color? cloudy;
  final Color? rain;
  final Color? fog;
  final Color? snow;
  final Color? glaze;
  final Color? hail;
  final Color? thunder;

  const ThemeColors({
    required this.primary,
    required this.black,
    required this.darkGrey,
    required this.grey,
    required this.lightGrey,
    required this.white,
    required this.red,
    required this.orange,
    required this.yellow,
    required this.green,
    required this.blue,
    required this.purple,
    this.sunny,
    this.cloudy,
    this.rain,
    this.fog,
    this.snow,
    this.glaze,
    this.hail,
    this.thunder,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? primary,
    Color? black,
    Color? darkGrey,
    Color? grey,
    Color? lightGrey,
    Color? white,
    Color? red,
    Color? orange,
    Color? yellow,
    Color? green,
    Color? blue,
    Color? purple,
    Color? sunny,
    Color? cloudy,
    Color? rain,
    Color? fog,
    Color? snow,
    Color? glaze,
    Color? hail,
    Color? thunder,
  }) {
    return ThemeColors(
      primary: primary ?? this.primary,
      black: black ?? this.black,
      darkGrey: darkGrey ?? this.darkGrey,
      grey: grey ?? this.grey,
      lightGrey: grey ?? this.grey,
      white: white ?? this.white,
      red: red ?? this.red,
      orange: orange ?? this.orange,
      yellow: yellow ?? this.yellow,
      green: green ?? this.green,
      blue: blue ?? this.blue,
      purple: purple ?? this.purple,
      sunny: sunny ?? this.sunny,
      cloudy: cloudy ?? this.cloudy,
      rain: rain ?? this.rain,
      fog: fog ?? this.fog,
      snow: snow ?? this.snow,
      glaze: glaze ?? this.glaze,
      hail: hail ?? this.hail,
      thunder: thunder ?? this.thunder,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
      covariant ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      primary: Color.lerp(primary, other.primary, t)!,
      black: Color.lerp(black, other.black, t)!,
      darkGrey: Color.lerp(darkGrey, other.darkGrey, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      lightGrey: Color.lerp(lightGrey, other.lightGrey, t)!,
      white: Color.lerp(white, other.white, t)!,
      red: Color.lerp(red, other.red, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      green: Color.lerp(green, other.green, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      purple: Color.lerp(purple, other.purple, t)!,
      sunny: Color.lerp(sunny, other.sunny, t)!,
      cloudy: Color.lerp(cloudy, other.cloudy, t)!,
      rain: Color.lerp(rain, other.rain, t)!,
      fog: Color.lerp(fog, other.fog, t)!,
      snow: Color.lerp(snow, other.snow, t)!,
      glaze: Color.lerp(glaze, other.glaze, t)!,
      hail: Color.lerp(hail, other.hail, t)!,
      thunder: Color.lerp(thunder, other.thunder, t)!,
    );
  }
}
