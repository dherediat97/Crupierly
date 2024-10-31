import 'package:crupierly/model/card_value.dart';
import 'package:flutter/material.dart';

class FrontCard extends StatefulWidget {
  const FrontCard({
    super.key,
    required this.card,
  });

  final CardValue card;

  @override
  State<FrontCard> createState() => _FrontCardState();
}

class _FrontCardState extends State<FrontCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(widget.card.symbol),
            Image.asset(
              widget.card.cardType.symbolImage,
              height: 24,
              width: 24,
              color: widget.card.cardType.color,
            )
          ],
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: widget.card.value,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return Image.asset(
                widget.card.cardType.symbolImage,
                height: 300,
                width: 300,
                color: widget.card.cardType.color,
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.card.symbol),
              Image.asset(
                widget.card.cardType.symbolImage,
                height: 24,
                width: 24,
                color: widget.card.cardType.color,
              )
            ],
          ),
        )
      ],
    );
  }
}
