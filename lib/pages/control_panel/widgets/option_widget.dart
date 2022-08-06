import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OptionWidget extends StatelessWidget {
  final String icon;
  final bool isSelected;
  final GestureTapCallback onTap;
  final double size;

  const OptionWidget({Key? key, required this.icon, required this.isSelected, required this.onTap, required this.size}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          color: isSelected ? Colors.white : Colors.black.withOpacity(0.1),
        ),
        child: Center(
          child: SvgPicture.asset(
            icon,
            color: isSelected ? Colors.black : Colors.white,
            width: size,
            height: size,
          ),
        ),
      ),
    );
  }
}
