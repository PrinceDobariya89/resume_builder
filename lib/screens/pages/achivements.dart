import 'package:flutter/material.dart';
import 'package:resume_builder/resumedata.dart';
import 'package:resume_builder/widgets/achivement_list.dart';
import 'package:resume_builder/widgets/resume_detail_container.dart';

class Achivements extends StatefulWidget {
  const Achivements({super.key});

  @override
  State<Achivements> createState() => _AchivementsState();
}

class _AchivementsState extends State<Achivements> {
  @override
  Widget build(BuildContext context) {
    return ResumeDetailContainer(
      child: Column(
        children: [
          const Text('Enter Achivements',
              style: TextStyle(height: 3, fontSize: 21, color: Colors.black45)),
          ...achihvement
              .map((e) =>
                  AchivementList(text: 'Exceeded sales 17% average'))
              .toList(),
          const SizedBox(height: 20),
          InkWell(
            onTap: (){
              setState(() {
                achihvement.add(3);
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.black26)),
              height: 50,
              width: double.infinity,
              child: const Icon(Icons.add, color: Colors.black26, size: 30),
            ),
          )
        ],
      ),
    );
  }
}
