import 'dart:math' as math;

import 'package:responsive_sizer/responsive_sizer.dart';

extension NumExtension on num {
  num get spMax {
    return math.max(w, h);
  }

  num get spMin {
    return math.min(w, h);
  }
}
