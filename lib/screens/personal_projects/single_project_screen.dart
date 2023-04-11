import 'package:flutter/material.dart';
import 'package:portfolio/util/app_enums.dart';
import 'package:portfolio/util/app_router.dart';
import 'package:portfolio/util/models/project_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:portfolio/util/app_extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class SingleProjectScreen extends StatelessWidget {
  const SingleProjectScreen({super.key, required this.id});
  final String id;

  static String routeName = '/project';

  @override
  Widget build(BuildContext context) {
    final project = ProjectModel.all[int.parse(id)];

    double margin;
    if (Device.width < 500) {
      margin = 4.w;
    } else if (Device.height >= 500 && Device.width < 750) {
      margin = 10.w;
    } else {
      margin = 12.w;
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
          SizedBox(height: 2.h),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: margin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.green,
                        child: Image.network(project.previewImage),
                      )),
                      SizedBox(width: 2.w),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            project.description,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: margin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 2.h),
                      Text(
                        "Features",
                        style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                      SizedBox(height: 2.h),
                      ...project.features
                          .map<Widget>((e) => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: .5.h),
                                    child: Icon(
                                      Icons.circle,
                                      size: 1.h,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 2.h),
                                  Expanded(
                                    child: Text(
                                      e,
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                          .toList(),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: margin),
                  child: Wrap(
                    children: project.tags
                        .map<Widget>((e) => e.toWidget(() {
                              launchUrl(Uri.parse(e.appLink));
                            }))
                        .toList(),
                  ),
                ),
                SizedBox(height: 4.h),
                SizedBox(
                  height: 40.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: margin),
                      ...project.images.map((e) => Padding(
                            padding: EdgeInsets.only(right: 2.w),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10.h,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5.h),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          AppRouter.navigatorKey
                                                              .currentState!
                                                              .pop();
                                                        },
                                                        icon: Icon(
                                                          Icons.cancel,
                                                          color: Colors.white,
                                                          size: 5.h,
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 10.h),
                                              child: Image.network(
                                                e,
                                                fit: BoxFit.contain,
                                                height: 80.h,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: Image.network(
                                e,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
