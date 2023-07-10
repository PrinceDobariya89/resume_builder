import 'package:flutter/material.dart';

class DetailText extends StatelessWidget {
  final String text;
  const DetailText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20,bottom: 10),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            
          ),
      ),
    );
  }
}
