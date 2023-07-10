import 'package:flutter/material.dart';
import 'package:resume_builder/widgets/detail_text.dart';
import 'package:resume_builder/widgets/text_field.dart';

import '../../widgets/resume_detail_container.dart';

class CarrierObjective extends StatelessWidget {
  const CarrierObjective({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ResumeDetailContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailText(text: 'Career Objective'),
                      TextField(
                        maxLines: 7,
                        decoration: InputDecoration(
                          hintText: 'Description',hintStyle: TextStyle(color: Colors.black26,fontSize: 20,fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black26))
                        ),
                      ),
                    ],
                  ),
                ),
                ResumeDetailContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailText(text: 'Current Designation (Experienced Candidate)'),
                      BuildTextField(hintText: 'Software Engineer')
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}