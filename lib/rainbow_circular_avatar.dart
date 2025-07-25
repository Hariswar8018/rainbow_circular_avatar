library rainbow_circular_avatar;

import 'package:flutter/material.dart';

/// A customizable circular avatar widget with a rainbow/multicolor border.
class RainbowCircularAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final double borderWidth;
  final List<Color> colors;
  final List<double> stops;
  final Color? backgroundColor;
  final Widget? fallbackIcon;

  const RainbowCircularAvatar({
    super.key,
    required this.imageUrl,
    required this.colors,
    required this.stops,
    this.radius = 30.0,
    this.borderWidth = 3.0,
    this.backgroundColor,
    this.fallbackIcon,
  }) : assert(colors.length == stops.length, 'colors and stops must be the same length');

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2 * (radius + borderWidth),
      height: 2 * (radius + borderWidth),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: SweepGradient(
          colors: colors,
          stops: stops,
        ),
      ),
      child: Center(
        child: Container(
          width: 2 * radius,
          height: 2 * radius,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor ?? Colors.grey.shade200,
            image: imageUrl.isNotEmpty
                ? DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover)
                : null,
          ),
          child: imageUrl.isEmpty && fallbackIcon != null ? Center(child: fallbackIcon) : null,
        ),
      ),
    );
  }
}



class GoogleRainbowCircularAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final double borderWidth;
  final List<Color> colors;
  final List<double> stops;
  final Color? backgroundColor;
  final Widget? fallbackIcon;

  const GoogleRainbowCircularAvatar({
    super.key,
    required this.imageUrl,
    this.radius = 30.0,
    this.borderWidth = 3.0,
    this.backgroundColor,
    this.fallbackIcon,
    this.colors = const [
      Color(0xFFEB2F23), // Soft Pink
      Color(0xFF1765e8), // Light Blue
      Color(0xff2ce658), // Light Green
      Color(0xFFf5ea78), // Soft Yellow
    ],
    this.stops = const [0.0, 0.4, 0.8, 1.0],

  }) : assert(colors.length == stops.length, 'Colors and stops must match in length');

  @override
  Widget build(BuildContext context) {
    final double totalSize = 2 * (radius + borderWidth);

    return Container(
      width: totalSize,
      height: totalSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: SweepGradient(
          colors: colors,
          stops: stops,
        ),
      ),
      child: Center(
        child: Container(
          width: 2 * radius,
          height: 2 * radius,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor ?? Colors.grey.shade200,
            image: imageUrl.isNotEmpty
                ? DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            )
                : null,
          ),
          child: imageUrl.isEmpty && fallbackIcon != null
              ? Center(child: fallbackIcon)
              : null,
        ),
      ),
    );
  }
}
