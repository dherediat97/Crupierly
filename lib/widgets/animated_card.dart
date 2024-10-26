import 'dart:math';

import 'package:crupierly/game/card_types.dart';
import 'package:flutter/material.dart';

class AnimatedCard extends StatefulWidget {
  const AnimatedCard({
    super.key,
    required this.cardType,
  });

  final CardType cardType;

  @override
  State<AnimatedCard> createState() => _AnimatedCardWidgetState();
}

class _AnimatedCardWidgetState extends State<AnimatedCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 300,
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('A'),
                  Image.asset(
                    'assets/images/${widget.cardType.value}.png',
                    height: 20,
                    width: 20,
                    color: Colors.red,
                  )
                ],
              ),
              Center(
                child: Image.asset(
                  'assets/images/${widget.cardType.value}.png',
                  color: Colors.red,
                  height: 200,
                ),
              ),
              Transform.rotate(
                angle: 180 * pi,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('A'),
                    Image.asset(
                      'assets/images/${widget.cardType.value}.png',
                      height: 20,
                      width: 20,
                      color: Colors.red,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
