import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final IconData? icon;
  final String text;
  final void Function() onTap;

  const CalculatorButton({
    Key? key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.text,
    required this.onTap,
    this.icon,
  }) : super(key: key);

  const CalculatorButton.icon({
    Key? key,
    required this.backgroundColor,
    required this.foregroundColor,
    this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: backgroundColor,
        child: Center(
          child: icon == null
              ? Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: foregroundColor),
                )
              : Icon(
                  icon,
                  color: foregroundColor,
                ),
        ),
      ),
    );
  }
}
