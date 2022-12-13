import 'package:flame/components.dart';
import 'package:flame/game.dart';

import '../Players/Player.dart';

class SpaceShooterGame extends FlameGame {

  Player nave=Player();

  SpaceShooterGame(){


    nave.anchor=Anchor.bottomRight;
  }

  @override
  void onGameResize(Vector2 canvasSize) {
    // TODO: implement onGameResize
    super.onGameResize(canvasSize);
    nave.position=this.size/2;
    nave.width=size[0]*0.3;
    nave.height=size[1]*0.3;
  }

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    this.add(nave);


  }
}