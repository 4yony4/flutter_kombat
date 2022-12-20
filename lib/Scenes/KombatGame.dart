

import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flame_forge2d/forge2d_game.dart';
import 'package:flame_tiled/flame_tiled.dart';

class KombatGame extends Forge2DGame{

  late TiledComponent mapComponent;

  KombatGame():super(gravity: Vector2(0, 9.8), zoom: 1);

  @override
  Future<void>? onLoad() async{
    // TODO: implement onLoad
    await super.onLoad();

    mapComponent = await TiledComponent.load('mapa.tmx', Vector2.all(32));
    add(mapComponent);
  }
  
  @override
  Color backgroundColor() {
    // TODO: implement backgroundColor
    return const Color.fromRGBO(104, 129, 255, 1.0);
  }

}