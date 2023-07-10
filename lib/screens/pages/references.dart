import 'package:flutter/material.dart';
import 'package:resume_builder/widgets/detail_text.dart';
import 'package:resume_builder/widgets/resume_detail_container.dart';
import 'package:resume_builder/widgets/text_field.dart';

class References extends StatelessWidget {
  const References({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResumeDetailContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        DetailText(text: 'Refrence Name'),
        BuildTextField(hintText: 'Suresh Shah'),
        DetailText(text: 'Designation'),
        BuildTextField(hintText: 'Marketing Manager, ID-342332'),
        DetailText(text: 'Organization/Institute'),
        BuildTextField(hintText: 'Green Energy Pvt.Ltd')

      ],),
    );
  }
}