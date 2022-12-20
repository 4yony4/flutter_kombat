import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutterkombat/Scenes/KombatGame.dart';

import 'Scenes/SpaceShooterGame.dart';

void main() {
  //SpaceShooterGame game = SpaceShooterGame();
  KombatGame kombatGame= KombatGame();
  GameWidget gameWidget = GameWidget(game:kombatGame );

  runApp(gameWidget);
}





