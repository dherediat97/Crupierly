import 'package:crupierly/app/constants/app_assets.dart';
import 'package:crupierly/domain/enum/card_types.dart';

class CardValue {
  const CardValue({
    required this.cardType,
    required this.symbol,
    required this.value,
    this.backCard = AppAssets.backCard,
  });

  final CardType cardType;
  final String symbol;
  final int value;
  final String backCard;
}
