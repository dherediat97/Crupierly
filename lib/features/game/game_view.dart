import 'package:crupierly/constants/data_mock.dart';
import 'package:crupierly/features/game/deck.dart';
import 'package:crupierly/features/home/home_screen_background.dart';
import 'package:flutter/material.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  @override
  Widget build(BuildContext context) {
    return const HomeScreenBackground(
      foreground: Deck(
        orderedDeck: orderedDeck,
      ),
    );
  }
}
