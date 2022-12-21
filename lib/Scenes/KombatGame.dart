

import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flame_forge2d/forge2d_game.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flutterkombat/Objects/TiledMapObjectBody.dart';
import 'package:flutterkombat/Players/Fighter.dart';

class KombatGame extends Forge2DGame{

  late TiledComponent mapComponent;

  KombatGame():super(gravity: Vector2(0, 9.8), zoom: 1);

  @override
  Future<void>? onLoad() async{
    // TODO: implement onLoad
    await super.onLoad();

    mapComponent = await TiledComponent.load('mapa.tmx', Vector2.all(32));
    add(mapComponent);


    final capaObjGroup = mapComponent.tileMap.getLayer<ObjectGroup>('objetos');

    for (final obj in capaObjGroup!.objects) {
      TiledMapObjectBody tmob=TiledMapObjectBody(obj);
      add(tmob);
    }

    Fighter fighter=Fighter(position: Vector2(size.x/3,100), size: size*0.1);
    add(fighter);


  }

  @override
  Color backgroundColor() {
    // TODO: implement backgroundColor
    return const Color.fromRGBO(104, 129, 255, 1.0);
  }



}