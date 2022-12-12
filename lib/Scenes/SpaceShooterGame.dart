import 'package:flame/components.dart';
import 'package:flame/game.dart';

import '../Players/Player.dart';

class SpaceShooterGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    add(
      Player()
        ..position = size / 3
        ..width = 50
        ..height = 100
        ..anchor = Anchor.center,
    );
  }
}