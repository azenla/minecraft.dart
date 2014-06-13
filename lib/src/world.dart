part of minecraft;

abstract class World {
  String levelName;
  final List<Entity> entities = [];

  Block blockAt(Position position);

  @override
  String toString() => "${levelName}";
}