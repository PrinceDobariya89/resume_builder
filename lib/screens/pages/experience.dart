import 'package:flutter/material.dart';
import 'package:resume_builder/widgets/detail_text.dart';
import 'package:resume_builder/widgets/text_field.dart';

import '../../widgets/resume_detail_container.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ResumeDetailContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DetailText(text: 'Company Name'),
                const BuildTextField(hintText: 'New Enterprise,San Francisco'),
                const DetailText(text: 'School/College/Institute'),
                const BuildTextField(hintText: 'Quality Test Engineer'),
                const DetailText(text: 'Roles (optional)'),
                const BuildTextField(
                    hintText:
                        'Working with team members to come up with new concepts and product analysis...'),
                const SizedBox(height: 30),
                const Text('Employed Status'),
                Row(
                  children: [
                    Row(
                      children: [
                        Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                        const Text('Previously Employed'),
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                    //     const Text('Currently  Employed'),
                    //   ],
                    // ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                const Row(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text('Date Joined'),
                              BuildTextField(hintText: 'DD/MM/YYYY')
                            ],
                          ),
                        )
                      ],
                    )),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text('Date Exit'),
                              BuildTextField(hintText: 'DD/MM/YYYY')
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text('SAVE')),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
