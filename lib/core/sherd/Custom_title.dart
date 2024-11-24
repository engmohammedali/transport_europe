import 'package:flutter/material.dart';
import 'package:transport_europe/core/theming/colors.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final IconData icon;
  const CustomTitle(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          softWrap: true,
          textAlign: TextAlign.center,
          title,
          style: const TextStyle(
              fontSize: 16,
              color: ColorsManager.btncolor,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),
        ),
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: Colors.red,
            )),
      ],
    );
  }
}
