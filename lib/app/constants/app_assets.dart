import 'package:crupierly/app/config/enviroment_config.dart';

class AppAssets {
  static const String assetsFolder =
      EnvironmentConfig.environment == 'prod' ? 'assets' : '';

  static const String imagesFolder = '$assetsFolder/images';

  static const String cardsFolder = '$imagesFolder/cards';
  static const String backgroundFolder = '$imagesFolder/backgrounds';

  static const String greenBackground =
      '$backgroundFolder/background_green.jpg';
  static const String purpleBackground =
      '$backgroundFolder/background_green.jpg';

  static const String heart = '$cardsFolder/heart.png';
  static const String diamond = '$cardsFolder/diamond.png';
  static const String club = '$cardsFolder/club.png';
  static const String spade = '$cardsFolder/spade.png';
  static const String backCard = '$cardsFolder/back_card.png';
}
