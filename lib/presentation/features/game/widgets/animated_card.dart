import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedCard extends StatefulWidget {
  const AnimatedCard({
    super.key,
    required this.frontCard,
    required this.backCard,
  });
  final Widget frontCard;
  final Widget backCard;

  @override
  State<AnimatedCard> createState() => _AnimatedCardWidgetState();
}

class _AnimatedCardWidgetState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        _flipCard();
      },
      child: Transform(
        transform: Matrix4.rotationY(_animation.value * pi),
        alignment: Alignment.center,
        child: _isFront ? widget.frontCard : widget.backCard,
      ),
    );
  }

  _flipCard() {
    if (_controller.status != AnimationStatus.forward) {
      if (_isFront) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
      _isFront = !_isFront;
    }
  }
}
