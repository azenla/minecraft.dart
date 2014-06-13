part of minecraft;

abstract class Entity {
  final int id;
  Position position;

  void teleport(Position position);

  bool destroy();

  bool operator ==(Entity entity) => entity.id == id;
}

abstract class LivingEntity extends Entity {
  void kill() => destroy();
}
