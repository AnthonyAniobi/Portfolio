import 'package:flutter/material.dart';
import 'package:portfolio/util/models/project_model.dart';

class MyWorksDialog extends StatelessWidget {
  const MyWorksDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            // itemCount: ProjectModel.all.length,
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300),
            itemBuilder: (context, index) {
              return Container(
                child: Text(ProjectModel.all[index].name),
              );
            }));
  }
}
