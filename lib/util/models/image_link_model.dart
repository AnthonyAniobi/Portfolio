import 'package:flutter/material.dart';
import 'package:portfolio/util/app_enums.dart';

class ImageLinkModel {
  final String appLink;
  final String appName;
  final DeployedLocation location;

  const ImageLinkModel(
      {required this.appLink, required this.location, required this.appName});
}
