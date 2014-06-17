part of minecraft;

abstract class World {
  final String levelName;

  List<Entity> get entities;

  Block blockAt(Position position);

  @override
  String toString() => "${levelName}";
}