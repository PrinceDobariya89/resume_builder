import 'package:flutter/material.dart';
import 'package:resume_builder/resumedata.dart';
import 'package:resume_builder/widgets/container.dart';
import 'package:resume_builder/widgets/resume_option.dart';

class ResumeWorkspace extends StatelessWidget {
  const ResumeWorkspace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Workspace'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(children: [
        const BuildContainer(text: 'Build Options'),
        Expanded(
            child: ListView(
          children: category
              .map((e) => ResumeOptions(icon: e.icon, title: e.title))
              .toList(),
        ))
      ]),
    );
  }
}
