import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class Player extends PositionComponent with Tappable{
  static final _paint = Paint();
  Color cVisible=Colors.white;
  double iYMovido=0;
  double iYOrigen=0;
  int tapCount=0;
  int iLevel=1;
  int iDireccion=-2;
  int iAlturaMaxima=800;
  double dGravedad=9.8;

  //UNO
  @override
  void update(double dt) {
    // TODO: implement update
    super.update(dt);
    _paint.color = cVisible;
    position[1]=position[1]+iDireccion;

    if(position[1]<0){
      iDireccion=-iDireccion;
    }
    if(position[1]>iAlturaMaxima){
      iDireccion=-iDireccion;
    }


    //position[1]=iYOrigen+iYMovido;
  }

  @override
  Future<void>? onLoad() {
    // TODO: implement onLoad
    iYOrigen=position[1];
    return super.onLoad();

  }

  //DOS
  @override
  void render(Canvas canvas) {
    canvas.drawRect(size.toRect(), _paint);
    //canvas.drawImage(image, offset, paint)
  }

  @override
  bool onTapUp(TapUpInfo info) {
    print("tap up");
    cVisible = Colors.white;
    return true;
  }

  @override
  bool onTapDown(TapDownInfo info) {
    // TODO: implement onTapDown
    cVisible = Colors.red;
    iDireccion=-iDireccion;
    /*tapCount++;
    if(tapCount>iLevel*5){
      iDireccion=iDireccion*2;
      tapCount=0;
    }*/
    //iYMovido=iYMovido+10;
    return super.onTapDown(info);
  }



}