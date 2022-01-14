import 'package:flutter/material.dart';

class DrawerClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.addOval(Rect.fromCircle(center: Offset(400, 30), radius: 150));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class DrawerClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.addOval(Rect.fromCircle(center: Offset(40, 200), radius: 150));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
