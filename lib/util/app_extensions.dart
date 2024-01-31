import 'package:flutter/material.dart';
import 'package:portfolio/util/app_enums.dart';
import 'package:portfolio/util/models/image_link_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

extension ImageLinkToWidget on ImageLinkModel {
  Widget toWidget(Function onPressed) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 1.h, 1.h, 0),
      child: InkWell(
        onTap: () {
          onPressed();
        },
        child: Container(
          width: 17.h,
          padding: EdgeInsets.all(.5.h),
          decoration: BoxDecoration(
              color: location.bgColor(),
              boxShadow: [
                BoxShadow(
                  offset: Offset(.4.h, .5.h),
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: .6.h,
                )
              ],
              borderRadius: BorderRadius.circular(.5.h)),
          child: Row(
            children: [
              Image.asset(
                location.toImageUrl(),
                fit: BoxFit.cover,
                height: 4.h,
                width: 4.h,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      appName,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: location.textColor(),
                      ),
                    ),
                    Text(
                      location.promptText(),
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w400,
                        color: location.textColor(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

extension DeployLocationToImageUrl on DeployedLocation {
  String toImageUrl() {
    switch (this) {
      case DeployedLocation.appstore:
        return "assets/icons/app_store.png";
      case DeployedLocation.playstore:
        return "assets/icons/playstore.png";
      case DeployedLocation.github:
        return "assets/icons/github.png";
      case DeployedLocation.external:
        return "assets/icons/code_file.png";
      case DeployedLocation.preview:
        return "assets/icons/preview.png";
      case DeployedLocation.pubdev:
        return "assets/icons/dart.png";
    }
  }

  String promptText() {
    switch (this) {
      case DeployedLocation.appstore:
        return "Get the app on App Store";
      case DeployedLocation.playstore:
        return "Get the app on Play Store";
      case DeployedLocation.github:
        return "Get the app on Github";
      case DeployedLocation.external:
        return "Get the app Here";
      case DeployedLocation.preview:
        return "Preview the result Here";
      case DeployedLocation.pubdev:
        return "Get the package";
    }
  }

  Color bgColor() {
    switch (this) {
      case DeployedLocation.appstore:
        return Colors.white;
      case DeployedLocation.playstore:
        return Colors.black;
      case DeployedLocation.github:
        return Colors.white;
      case DeployedLocation.external:
        return Colors.white;
      case DeployedLocation.preview:
        return Colors.white;
      case DeployedLocation.pubdev:
        return Colors.white;
    }
  }

  Color textColor() {
    switch (this) {
      case DeployedLocation.appstore:
        return Colors.black;
      case DeployedLocation.playstore:
        return Colors.white;
      case DeployedLocation.github:
        return Colors.black;
      case DeployedLocation.external:
        return Colors.black;
      case DeployedLocation.preview:
        return Colors.black;
      case DeployedLocation.pubdev:
        return Colors.black;
    }
  }
}
