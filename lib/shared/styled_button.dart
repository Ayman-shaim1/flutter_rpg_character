import 'package:flutter/material.dart';
import 'package:flutter_rpg/theme.dart';

class StyleButton extends StatelessWidget {
  const StyleButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: child,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColors.primaryColor, AppColors.primaryAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
      ),
    );
  }
}
