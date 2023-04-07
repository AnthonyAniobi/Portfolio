import 'package:flutter/material.dart';
import 'package:portfolio/util/app_enums.dart';

class ImageLinkModel {
  final String imageLink;
  final String appName;
  final DeployedLocation location;

  const ImageLinkModel(
      {required this.imageLink, required this.location, required this.appName});
}
