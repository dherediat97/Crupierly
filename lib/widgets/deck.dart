import 'package:crupierly/game/card_types.dart';
import 'package:crupierly/widgets/animated_card.dart';
import 'package:crupierly/widgets/home_screen_background.dart';
import 'package:flutter/material.dart';

class Deck extends StatelessWidget {
  const Deck({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreenBackground(
      foreground: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: AnimatedCard(
              cardType: CardType.heart,
            ),
          )
        ],
      ),
    );
  }
}
