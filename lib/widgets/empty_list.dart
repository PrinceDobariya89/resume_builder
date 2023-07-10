import 'package:flutter/material.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.do_disturb_alt_sharp,size: 40),
        Text('No Resumes + Create new resume',style: TextStyle(fontSize: 19,color: Colors.grey),)
      ],
    );
  }
}