import 'package:flutter/material.dart';
import 'package:resume_builder/widgets/detail_text.dart';
import 'package:resume_builder/widgets/resume_detail_container.dart';
import 'package:resume_builder/widgets/text_field.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return ResumeDetailContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DetailText(text: 'Project Title'),
          const BuildTextField(hintText: 'Resume Builder App'),
          const DetailText(text: 'Technologies'),
          CheckboxListTile(value: false, onChanged: (value){},title: const Text('C Programming'),),
          CheckboxListTile(value: false, onChanged: (value){},title: const Text('C++'),),
          CheckboxListTile(value: false, onChanged: (value){},title: const Text('Flutter'),),
          const DetailText(text: 'Roles'),
          const BuildTextField(hintText: 'Organizae team members,Code analysis'),
          const DetailText(text: 'Technologies'),
          const BuildTextField(hintText: '5 - Programmers'),
          const DetailText(text: 'Project Description'),
          const BuildTextField(hintText: 'Enter Your Project Description'),
          const SizedBox(height: 20),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('SAVE')),
          ],
        )
        ],
      ),
    );
  }
}