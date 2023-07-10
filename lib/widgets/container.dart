import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  final String? text;
  const BuildContainer({this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            color: Colors.blue.shade800,
            child: Text(text??'',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          );
  }
}