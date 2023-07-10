import 'package:flutter/material.dart';
import 'package:resume_builder/model/resume.dart';
import 'package:resume_builder/model/user.dart';

const category = [
  Resume(title: 'Contact info', icon: Icons.contact_mail_outlined),
  Resume(title: 'Carrier Objective', icon: Icons.card_travel_rounded),
  Resume(title: 'Personal Details', icon: Icons.person_outline_sharp),
  Resume(title: 'Education', icon: Icons.school_outlined),
  Resume(title: 'Experiences', icon: Icons.rocket_launch_outlined),
  Resume(title: 'Technical Skills', icon: Icons.list_alt_outlined),
  Resume(title: 'Intrest/Hobbies', icon: Icons.menu_book_outlined),
  Resume(title: 'Projects', icon: Icons.architecture_outlined),
  Resume(title: 'Achivements', icon: Icons.track_changes_outlined),
  Resume(title: 'References', icon: Icons.handshake_outlined),
  Resume(title: 'Declaration', icon: Icons.edit_note_outlined),
];

final resumeData = <User>[];

var achihvement = [];
var technicalSkill = [1,2];
