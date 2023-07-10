import 'package:flutter/material.dart';

class AchivementList extends StatefulWidget {
  final String text;
  const AchivementList({super.key, required this.text});

  @override
  State<AchivementList> createState() => _AchivementListState();
}

class _AchivementListState extends State<AchivementList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
                decoration: InputDecoration(
                    hintText: widget.text,
                    hintStyle: const TextStyle(color: Colors.black26)))),
        IconButton(
          icon: const Icon(Icons.delete_outline),
          onPressed: () {},
        )
      ],
    );
  }
}
