import 'package:crupierly/presentation/features/game/widgets/back_card.dart';
import 'package:crupierly/presentation/features/game/widgets/front_card.dart';
import 'package:crupierly/domain/models/card_value.dart';
import 'package:crupierly/presentation/features/game/widgets/animated_card.dart';
import 'package:flutter/material.dart';

class Deck extends StatefulWidget {
  const Deck({super.key, required this.orderedDeck});

  final List<CardValue> orderedDeck;

  @override
  State<Deck> createState() => _DeckState();
}

class _DeckState extends State<Deck> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.orderedDeck.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisExtent: 300,
            crossAxisSpacing: 50,
          ),
          itemBuilder: (context, index) {
            return AnimatedCard(
              backCard: Container(
                height: 500,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BackCard(card: widget.orderedDeck[index]),
                ),
              ),
              frontCard: Container(
                  height: 500,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FrontCard(card: widget.orderedDeck[index]),
                  )),
            );
          },
        ),
      ),
    );
  }
}
