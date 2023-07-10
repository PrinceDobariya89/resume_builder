import 'package:flutter/material.dart';
import 'package:resume_builder/widgets/detail_text.dart';
import 'package:resume_builder/widgets/text_field.dart';

import '../../widgets/resume_detail_container.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ResumeDetailContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailText(text: 'Course/Degree'),
                BuildTextField(hintText: 'B. Tech Information Technology'),
                DetailText(text: 'School/College/Institute'),
                BuildTextField(hintText: 'Bhagwan Mahavir University'),
                DetailText(text: 'School/College/Institute'),
                BuildTextField(hintText: '70% (or) 7.0 CGPA'),
                DetailText(text: 'Year Of Pass'),
                BuildTextField(hintText: '2019'),
              ],
                            
            ),
          ),
        ],
      ),
    );
  }
}
