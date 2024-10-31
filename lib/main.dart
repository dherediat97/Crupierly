import 'package:crupierly/constants/app_constants.dart';
import 'package:crupierly/constants/data_mock.dart';
import 'package:crupierly/features/game/deck.dart';
import 'package:crupierly/model/game.dart';
import 'package:crupierly/theme/theme.dart';
import 'package:crupierly/features/home/home_screen_background.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      darkTheme: defaultDarkTheme,
      theme: defaultLightTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Game game = Game();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(appName),
          actions: [
            IconButton(
              onPressed: () {
                if (game.isFullScreen) {
                  game.exitFullScreen();
                } else {
                  game.showFullScreen();
                }
              },
              icon: Icon(
                  game.isFullScreen ? Icons.fullscreen : Icons.fullscreen_exit),
            )
          ],
        ),
        body: HomeScreenBackground(
          foreground: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (!game.newGame)
                FilledButton(
                  onPressed: () {
                    setState(() {
                      game.createNew();
                    });
                  },
                  child: const Text('Barajar'),
                ),
              if (game.newGame) const Deck(orderedDeck: orderedDeck)
            ],
          ),
        ));
  }
}
