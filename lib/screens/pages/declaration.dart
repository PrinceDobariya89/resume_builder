import 'package:flutter/material.dart';
import 'package:resume_builder/widgets/resume_detail_container.dart';
import 'package:resume_builder/widgets/text_field.dart';

import '../../widgets/detail_text.dart';

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return ResumeDetailContainer(
      child: Column(
        children: [
          SwitchListTile(
            value: _isVisible,
            onChanged: (value) {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
            title: const DetailText(text: 'Declaration'),
          ),
          Visibility(
            visible: _isVisible,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 30, left: 10),
                  child: Icon(Icons.track_changes_outlined, size: 50),
                ),
                const BuildTextField(hintText: 'Declaration'),
                const Divider(thickness: 2),
                const Row(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Date'),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Place(Interview venue/city)'),
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
