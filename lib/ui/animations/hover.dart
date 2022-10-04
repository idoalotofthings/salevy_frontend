import 'package:flutter/material.dart';

class OnHover extends StatefulWidget {
  final Widget Function(bool isHovered) builder;

  const OnHover({required this.builder, super.key});

  @override
  State<OnHover> createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..translate(0.0, -10.0, -10.0);
    final transform = _isHovered ? hovered : Matrix4.identity();

    return MouseRegion(
      onEnter: (_) => onEnter(true),
      onExit: (_) => onEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: transform,
        child: widget.builder(_isHovered),
      ),
    );
  }

  void onEnter(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
