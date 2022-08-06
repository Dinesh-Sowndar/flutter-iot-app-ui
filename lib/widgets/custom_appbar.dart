import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
            size: 25,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
