import 'package:crupierly/model/card_value.dart';
import 'package:flutter/material.dart';

class BackCard extends StatefulWidget {
  const BackCard({
    super.key,
    required this.card,
  });

  final CardValue card;

  @override
  State<BackCard> createState() => _BackCardState();
}

class _BackCardState extends State<BackCard> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.card.backCard,
      fit: BoxFit.contain,
    );
  }
}
