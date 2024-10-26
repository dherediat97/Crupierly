import 'package:crupierly/constants/app_constants.dart';
import 'package:crupierly/game/game.dart';
import 'package:crupierly/theme/theme.dart';
import 'package:crupierly/widgets/game_view.dart';
import 'package:crupierly/widgets/home_screen_background.dart';
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
      body: !game.newGame
          ? HomeScreenBackground(
              foreground: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FilledButton(
                      onPressed: () {
                        setState(() {
                          game.createNew();
                        });
                      },
                      child: const Text('Empezar partida'),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    // game.isSaved
                    //     ? FilledButton(
                    //         onPressed: () => game.createNew(),
                    //         child: const Text("Continuar partida"),
                    //       )
                    //     : OutlinedButton(
                    //         onPressed: () => game.resume(),
                    //         child: const Text("Continuar partida"),
                    //       )
                  ],
                ),
              ),
            )
          : const GameView(),
    );
  }
}
