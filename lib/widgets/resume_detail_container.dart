import 'package:flutter/material.dart';

class ResumeDetailContainer extends StatelessWidget {
  final Widget? child;
  const ResumeDetailContainer({super.key,this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), 
      margin: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
        child: child,
      ),
    );
  }
}