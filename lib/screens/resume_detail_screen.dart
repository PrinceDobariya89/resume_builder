import 'package:flutter/material.dart';
import 'package:resume_builder/screens/pages/Hobbies.dart';
import 'package:resume_builder/screens/pages/achivements.dart';
import 'package:resume_builder/screens/pages/carrier_objective.dart';
import 'package:resume_builder/screens/pages/declaration.dart';
import 'package:resume_builder/screens/pages/experience.dart';
import 'package:resume_builder/screens/pages/personal_details.dart';
import 'package:resume_builder/screens/pages/projects.dart';
import 'package:resume_builder/screens/pages/references.dart';
import 'package:resume_builder/screens/pages/technical_skills.dart';
import 'package:resume_builder/widgets/container.dart';
import 'package:resume_builder/widgets/resume_detail_container.dart';

import 'pages/Education.dart';

class ResumeDetailscreen extends StatelessWidget {
  final String title;
  const ResumeDetailscreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {

    Widget changeScreen(){
      if(title == 'Carrier Objective'){
        return const CarrierObjective();
      }else if(title == 'References'){
        return const References();
      }else if(title == 'Education'){
        return const Education();
      }else if(title == 'Personal Details'){
        return const PersonalDetails();
      }else if(title == 'Projects'){
        return const Projects();
      }else if(title == 'Experiences'){
        return const Experience();
      }else if(title == 'Declaration'){
        return const Declaration();
      }else if(title == 'Technical Skills'){
        return const TechnicalSkills();
      }else if(title == 'Intrest/Hobbiees'){
        return const Hobbies();
      }else if(title == 'Achivements'){
        return const Achivements();
      }else{
        return ResumeDetailContainer(child: Container(
          alignment: Alignment.center,
          height: 300,
          child: Text('$title Comming Soon...',textScaleFactor: 1.3)));
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white.withOpacity(0.93),
      appBar: AppBar(
        title: Text(title),centerTitle: true,elevation: 0,
      ),
      body: Column(
        children: [
          const BuildContainer(),
          Expanded(
            child: SingleChildScrollView(
              child: changeScreen(),
            ),
          ),
        ],
      )
    );
  }
}
