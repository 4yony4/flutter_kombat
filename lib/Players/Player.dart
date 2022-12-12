import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Player extends PositionComponent {
  static final _paint = Paint();

  @override
  void render(Canvas canvas) {
    _paint.color = Colors.white;
    canvas.drawRect(size.toRect(), _paint);
    //canvas.drawImage(image, offset, paint)

  }
}