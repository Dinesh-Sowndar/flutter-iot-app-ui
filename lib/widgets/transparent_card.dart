import 'package:flutter/material.dart';

class TransparentCard extends StatelessWidget {
  final Widget child;

  const TransparentCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        color: Colors.black.withOpacity(0.2),
      ),
      child: Padding(padding: const EdgeInsets.all(10.0), child: child),
    );
  }
}
