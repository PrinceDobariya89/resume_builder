import 'package:flutter/material.dart';
import 'package:resume_builder/resumedata.dart';
import 'package:resume_builder/widgets/achivement_list.dart';
import 'package:resume_builder/widgets/resume_detail_container.dart';

class TechnicalSkills extends StatelessWidget {
  const TechnicalSkills ({super.key});

  @override
  Widget build(BuildContext context) {
    return ResumeDetailContainer(
      child: Column(
        children: [
        const Text('Enter your skills',style: TextStyle(height: 3,fontSize: 21,color: Colors.black45),),
        ...technicalSkill.map((e) => const AchivementList(text: 'C Programming, Web Technical')).toList(),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.black26)
          ),
          height: 50,
          width: double.infinity,
          child: const Icon(Icons.add,color: Colors.black26,size: 30),)
      ],),
    );
  }
}