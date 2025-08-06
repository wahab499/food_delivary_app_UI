import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  final String filtertext;
  const Filter({super.key, required this.filtertext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.amber.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
          bottom: 10,
        ),
        child: Text(
          filtertext,
          style: TextStyle(fontSize: 18, color: Colors.deepOrange),
        ),
      ),
    );
  }
}
