import 'package:flutter/material.dart';

import '../../src/extensions/extensions.dart';
import '../../src/themes/themes.dart';

class Loader extends StatefulWidget {
  final Widget? child;
  final Duration? duration;

  const Loader({
    super.key,
    this.child,
    this.duration = const Duration(
      seconds: 2,
    ),
  });

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();
  }

  @override
  void didUpdateWidget(covariant Loader oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.duration = widget.duration;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => RotationTransition(
        turns: Tween<double>(
          begin: 0.0,
          end: 2.0,
        ).animate(CurvedAnimation(
          parent: _controller,
          curve: Curves.easeInOut,
        )),
        child: widget.child ??
            Icon(
              ClimaticaIcons.loader,
              color: context.theme.progressIndicatorTheme.color,
              size: 56.0,
            ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
