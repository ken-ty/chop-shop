import 'dart:math';
import 'dart:ui';

Color interpolateColor(Color from, Color to, double elapsed) {
  double r, g, b, a;
  double speed = min(1.0, elapsed * 5.0);
  double c = to.alpha.toDouble() - from.alpha.toDouble();
  if (c.abs() < 1.0) {
    a = to.alpha.toDouble();
  } else {
    a = from.alpha + c * speed;
  }

  c = to.red.toDouble() - from.red.toDouble();
  if (c.abs() < 1.0) {
    r = to.red.toDouble();
  } else {
    r = from.red + c * speed;
  }

  c = to.green.toDouble() - from.green.toDouble();
  if (c.abs() < 1.0) {
    g = to.green.toDouble();
  } else {
    g = from.green + c * speed;
  }

  c = to.blue.toDouble() - from.blue.toDouble();
  if (c.abs() < 1.0) {
    b = to.blue.toDouble();
  } else {
    b = from.blue + c * speed;
  }

  return Color.fromARGB(a.round(), r.round(), g.round(), b.round());
}

String? getExtension(String filename) {
  int dot = filename.lastIndexOf(".");
  if (dot == -1) {
    return null;
  }
  return filename.substring(dot + 1);
}

String? removeExtension(String filename) {
  int dot = filename.lastIndexOf(".");
  if (dot == -1) {
    return null;
  }
  return filename.substring(0, dot);
}

class TimelineBackgroundColor {
  late Color color;
  late double start;
}

class TickColors {
  late Color background;
  late Color long;
  late Color short;
  late Color text;
  late double start;
  late double screenY;
}

class HeaderColors {
  late Color background;
  late Color text;
  late double start;
  late double screenY;
}

/*
class TapTarget {
  late TimelineEntry entry;
  late Rect rect;
  bool zoom = false;
}*/
