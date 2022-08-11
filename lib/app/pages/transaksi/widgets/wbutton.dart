import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

// ignore: must_be_immutable
class WButtonCustom extends StatelessWidget {
  WButtonCustom({
    Key? key,
    required this.color,
    required this.label,
    this.icon = Icons.abc,
    required this.width,
    required this.height,
    required this.fun,
  }) : super(key: key);
  final Color color;
  final String label;
  IconData icon;
  final double width, height;
  final Callback fun;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(14),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: fun,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * width, vertical: height),
          child: label != ''
              ? Text(
                  label,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                )
              : Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}
