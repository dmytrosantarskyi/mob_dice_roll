import 'package:flutter/material.dart';

import 'package:first_app/dice_roller.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  const GradientContainer.purple({super.key})
      : firstColor = Colors.deepPurple,
        secondColor = Colors.indigo;

  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, secondColor],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
