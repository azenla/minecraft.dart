part of minecraft;

class BlockRegister {
  List<BlockType> types;

  BlockRegister();

  BlockType typeByName(String name) {
    for (BlockType type in types) {
      if (type.name == name) {
        return type;
      }
    }
    return null;
  }

  void register(BlockType type) {
    types.add(type);
  }
}

abstract class BlockType {
  final String name;
  final bool breakable;

  @override
  String toString() => "{name: ${name}, breakable: ${breakable}}";
}

abstract class Block {
  final BlockType type;
  final Position position;

  @override
  String toString() => "{type: ${type}, position: ${position}}";
}