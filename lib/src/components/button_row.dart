import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    super.key,
    required this.onCancelPressed,
    required this.onSavePressed,
  });

  final void Function() onCancelPressed;
  final void Function() onSavePressed;

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: TextButton(
            onPressed: onCancelPressed,
            child: Text(
              localizations.cancelButtonLabel,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF007AFF),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
          child: VerticalDivider(),
        ),
        Expanded(
          child: TextButton(
            onPressed: onSavePressed,
            child: Text(
              localizations.okButtonLabel,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF007AFF),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
