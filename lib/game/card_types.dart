import 'package:flutter/material.dart';

enum CardType {
  heart(color: Colors.red, value: 'heart'),
  diamond(color: Colors.red, value: 'diamond'),
  spade(color: Colors.black, value: 'spade'),
  club(color: Colors.black, value: 'club');

  const CardType({
    required this.color,
    required this.value,
  });

  final Color color;
  final String value;
}
