import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:portfolio/util/num_extension.dart';

class EarthWidget extends StatefulWidget {
  const EarthWidget({
    super.key,
    this.interative = false,
  });
  final bool interative;

  @override
  State<EarthWidget> createState() => _EarthWidgetState();
}

class _EarthWidgetState extends State<EarthWidget>
    with SingleTickerProviderStateMixin {
  late Scene _scene;

  Object? _earth;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 30000),
      vsync: this,
    )
      ..addListener(() {
        if (!widget.interative) {
          if (_earth != null) {
            _earth!.rotation.y = _controller.value * -360;
            _earth!.updateTransform();
            _scene.update();
          }
        }
      })
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSceneCreated(Scene scene) {
    _scene = scene;
    // if (widget.interative) {
    //   _scene.camera.position.z = 20;
    // } else {
    //   _scene.camera.position.z = 13;
    // }
    _scene.camera.position.z = 15;

    // model from https://free3d.com/3d-model/planet-earth-99065.html
    _earth = Object(
        name: 'earth',
        scale: Vector3(10.0, 10.0, 10.0),
        backfaceCulling: false,
        fileName: 'assets/earth/earth.obj');

    _scene.world.add(_earth!);

    // texture from https://www.solarsystemscope.com/textures/
  }

  @override
  Widget build(BuildContext context) {
    return Cube(
      onObjectCreated: (object) {},
      onSceneCreated: _onSceneCreated,
      interactive: widget.interative,
    );
  }
}
