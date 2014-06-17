part of minecraft;

abstract class Game {
  final BlockRegister blocks = new BlockRegister();
  final Set<World> worlds = [];

  World get overworld;
}