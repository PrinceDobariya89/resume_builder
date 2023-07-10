import 'package:flutter/material.dart';
import 'package:resume_builder/widgets/detail_text.dart';
import 'package:resume_builder/widgets/resume_detail_container.dart';
import 'package:resume_builder/widgets/text_field.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ResumeDetailContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const DetailText(text: 'DOB'),
        const BuildTextField(hintText: 'DD/MM/YYY'),
        const DetailText(text: 'Marital Status'),
        RadioListTile(value: 1, groupValue: 1, onChanged: (value){},title: const Text('Single'),),
        RadioListTile(value: 2, groupValue: 1, onChanged: (value){},title: const Text('Married')),
        const DetailText(text: 'Languages Known'),
        CheckboxListTile(value: false,onChanged: (valse){},title: const Text('English'),),
        CheckboxListTile(value: false,onChanged: (valse){},title: const Text('Hindi'),),
        CheckboxListTile(value: false,onChanged: (valse){},title: const Text('Gujrati'),),
        const DetailText(text: 'Nationality'),
        const BuildTextField(hintText: 'Indian'),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('SAVE')),
          ],
        )
      ],),
    );
  }
}