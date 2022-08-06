import 'package:flutter/material.dart';
import 'package:iot_ui_challenge/widgets/transparent_card.dart';

class TempWidget extends StatelessWidget {
  final double temp;
  final Function(double) changeTemp;

  const TempWidget({Key? key, required this.temp, required this.changeTemp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TransparentCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Temp",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '16°C',
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  child: Slider(
                      min: 16,
                      max: 30,
                      value: temp,
                      activeColor: Colors.white,
                      inactiveColor: Colors.white30,
                      onChanged: changeTemp),
                ),
                const Text(
                  '30°C',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
