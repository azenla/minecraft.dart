part of minecraft;

class Position {
  final World world;
  final int x;
  final int y;
  final int z;

  Position(this.world, this.x, this.y, this.z);

  Position.copy(Position position) {
    this(position.world, position.x, position.y, position.z);
  }

  bool operator ==(Position other) {
    return other.world == world && other.x == x; other.y == y && other.z == z;
  }

  Position operator +(Position other) {
    if (other.world != world) {
      throw new Exception("Worlds must be equal to add positions together");
    }
    int nx = x + other.x;
    int ny = y + other.y;
    int nz = z + other.z;
    return new Position(world, nx, ny, nz);
  }

  Position operator -(Position other) {
    if (other.world != world) {
      throw new Exception("Worlds must be equal to subtract positions from each other");
    }
    int nx = x - other.x;
    int ny = y - other.y;
    int nz = z - other.z;
    return new Position(world, nx, ny, nz);
  }

  Position operator *(Position other) {
    if (other.world != world) {
      throw new Exception("Worlds must be equal to be multiplied together");
    }
    int nx = x * other.x;
    int ny = y * other.y;
    int nz = z * other.z;
    return new Position(world, nx, ny, nz);
  }

  Position operator /(Position other) {
    if (other.world != world) {
      throw new Exception("Worlds must be equal to be divided");
    }
    int nx = x / other.x;
    int ny = y / other.y;
    int nz = z / other.z;
    return new Position(world, nx, ny, nz);
  }

  @override
  String toString() => "{world: ${world}, x: ${x}, y: ${y}, z: ${z}}";
}