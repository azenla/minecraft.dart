part of minecraft.script;

class ScriptConnector {
  String _host;
  int _port;
  Socket _socket;

  ScriptConnector(String host, int port) {
    _host = host;
    _port = port;
  }

  void connect() {
    Socket.connect(_host, _port).then((sock) {
      _socket = sock;
    });
  }

  void send(String data) {
    _socket.add(data.codeUnits);
  }

  void disconnect() {
    _socket.close();
  }
}