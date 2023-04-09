import 'package:flutter/material.dart';
import 'package:portfolio/util/models/project_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SingleProjectScreen extends StatelessWidget {
  const SingleProjectScreen({super.key, required this.id});
  final String id;

  static String routeName = '/project';

  @override
  Widget build(BuildContext context) {
    final project = ProjectModel.all[int.parse(id)];

    double topHeight;
    if (Device.width < 750) {
      topHeight = 100.w;
    } else {
      topHeight = 100.h;
    }

    return Container(
      child: Column(
        children: [
          Text(
            project.name,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: 'AbrilFatface',
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.green,
                      child: Text("Hello world"),
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.red,
                      child: Column(),
                    )),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
