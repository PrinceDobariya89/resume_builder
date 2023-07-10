import 'package:flutter/material.dart';
import 'package:resume_builder/screens/resume_detail_screen.dart';

class ResumeOptions extends StatelessWidget {
  final IconData icon;
  final String title;
  const ResumeOptions({required this.icon,required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResumeDetailscreen(title: title,)),);
      },
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios_sharp),
    );
  }
}