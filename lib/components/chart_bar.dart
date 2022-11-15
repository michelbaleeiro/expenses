import 'package:flutter/material.dart';

class ChartBar extends StatefulWidget {

  final String? label;
  final double? value;
  final double? percentage;

  const ChartBar({Key? key, 
    this.label,
    this.value,
    this.percentage,
  }) : super(key: key);

  @override
  State<ChartBar> createState() => _ChartBarState();
}

class _ChartBarState extends State<ChartBar> {
  get value => null;

  String get label => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('R\$${value.toStringAsFixed(2)}'),
        const SizedBox(height: 5),
        // ignore: sized_box_for_whitespace
        Container(
          height: 60,
          width: 10,
          child: null,
        ),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}
