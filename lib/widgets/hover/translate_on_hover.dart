import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TranslateOnHover extends StatefulWidget {
  final Widget child;

  const TranslateOnHover({required this.child, Key? key}) : super(key: key);

  @override
  State<TranslateOnHover> createState() => _TranslateOnHoverState();
}

class _TranslateOnHoverState extends State<TranslateOnHover> {
  final Matrix4 nonHoverTransform = Matrix4.identity();
  final Matrix4 hoverTransform = Matrix4.identity()..translate(0, -5, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (PointerEnterEvent e) => _mouseEnter(true),
      onExit: (PointerExitEvent e) => _mouseEnter(false),
      child: AnimatedContainer(
        transform: _hovering ? hoverTransform : nonHoverTransform,
        duration: const Duration(milliseconds: 200),
        child: widget.child,
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
