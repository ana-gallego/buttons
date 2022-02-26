import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final Color? color;
  final Color textColor;
  final Function onPressed;
  final bool enabled;

  const PrimaryButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color,
    this.textColor = Colors.white,
    this.enabled = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: enabled ? Colors.orange : Colors.grey,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () => onPressed(),
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(label, style: const TextStyle(color: Colors.white)))),
    );
  }
}
