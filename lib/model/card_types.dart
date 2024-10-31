import 'package:flutter/material.dart';

enum CardType {
  heart(color: Colors.red, symbolImage: 'assets/images/cards/heart.png'),
  diamond(color: Colors.red, symbolImage: 'assets/images/cards/diamond.png'),
  spade(color: Colors.black, symbolImage: 'assets/images/cards/spade.png'),
  club(color: Colors.black, symbolImage: 'assets/images/cards/club.png');

  const CardType({
    required this.color,
    required this.symbolImage,
  });

  final Color color;
  final String symbolImage;
}
