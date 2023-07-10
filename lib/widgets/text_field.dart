import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  final String hintText;
  const BuildTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50,
      child: TextField(
        style: const TextStyle(fontSize: 20),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            hintText: hintText,
            hintStyle: const TextStyle(
                color: Colors.black26, fontSize: 20, fontWeight: FontWeight.w500),
            border: const OutlineInputBorder(),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.zero)),
      ),
    );
  }
}
