import 'package:flutter/services.dart';

class Game {
  bool newGame = false;
  bool isFullScreen = false;
  resume() {
    newGame = false;
  }

  createNew() {
    newGame = true;
  }

  exitFullScreen() {}

  showFullScreen() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }
}
