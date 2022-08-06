import 'package:flutter/material.dart';
import 'package:iot_ui_challenge/widgets/transparent_card.dart';

class SpeedWidget extends StatelessWidget {
  final int speed;
  final Function(int) changeSpeed;

  const SpeedWidget({Key? key, required this.speed, required this.changeSpeed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TransparentCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Speed",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _button(1, speed == 1),
              _button(2, speed == 2),
              _button(3, speed == 3),
            ],
          ),
        ],
      ),
    );
  }

  ElevatedButton _button(int _speed, bool isActive) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          onPrimary: isActive ? Colors.black : Colors.white,
          primary: isActive ? Colors.white : Colors.transparent,
          minimumSize: const Size(38, 38),
          padding: EdgeInsets.zero,
          shape: const CircleBorder(),
          side: BorderSide(color: Colors.white.withOpacity(0.4)),
          elevation: 0),
      onPressed: () => changeSpeed(_speed),
      child: Text(_speed.toString()),
    );
  }
}
