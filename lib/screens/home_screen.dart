import 'package:flutter/material.dart';
import 'package:resume_builder/model/user.dart';
import 'package:resume_builder/resumedata.dart';
import 'package:resume_builder/widgets/container.dart';
import 'package:resume_builder/widgets/empty_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    addResume();
  }

  void addResume() {
    setState(() {
      resumeData.add(User(name: 'Prince', dateTime: DateTime.now()));
    });
  }

  void deleteResume(index) {
    setState(() {
      resumeData.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Builder'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          const BuildContainer(text: 'RESUME'),
          Expanded(
            child: resumeData.isEmpty
                ? const EmptyList()
                : ListView.builder(
                    itemCount: resumeData.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                            title: Text(resumeData[index].name),
                            subtitle: Text('${resumeData[index].dateTime}'),
                            trailing: PopupMenuButton(
                              itemBuilder: (context) {
                                return [
                                  const PopupMenuItem(
                                      value: 'edit', child: Text('edit')),
                                  const PopupMenuItem(
                                      value: 'delete', child: Text('delete'))
                                ];
                              },
                              onSelected: (value) {
                                if (value == 'delete') {
                                  deleteResume(index);
                                }
                              },
                            )),
                      );
                    }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addResume();
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) => const ResumeWorkspace(),
          // ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}