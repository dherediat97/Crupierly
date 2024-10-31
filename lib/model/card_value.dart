import 'package:crupierly/model/card_types.dart';

class CardValue {
  const CardValue({
    required this.cardType,
    required this.symbol,
    required this.value,
    this.backCard = 'assets/images/cards/back_card.png',
  });

  final CardType cardType;
  final String symbol;
  final int value;
  final String backCard;
}
