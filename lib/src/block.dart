part of minecraft;

// TODO: Create Registration System
abstract class BlockType {
  final String name;
}

abstract class Block {
  final BlockType type;
  final World world;
  final Position position;
}