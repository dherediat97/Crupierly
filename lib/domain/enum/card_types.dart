import 'package:crupierly/app/constants/app_assets.dart';
import 'package:flutter/material.dart';

enum CardType {
  heart(color: Colors.red, symbolImage: AppAssets.heart),
  diamond(color: Colors.red, symbolImage: AppAssets.diamond),
  spade(color: Colors.black, symbolImage: AppAssets.spade),
  club(color: Colors.black, symbolImage: AppAssets.club);

  const CardType({
    required this.color,
    required this.symbolImage,
  });

  final Color color;
  final String symbolImage;
}
