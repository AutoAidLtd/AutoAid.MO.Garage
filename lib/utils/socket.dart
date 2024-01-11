import 'package:logger/logger.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

class SocketManager {
  final String serverUrl = 'http://10.0.2.2:4000';
  late IO.Socket _socket;
  static SocketManager? _instance = SocketManager._internal();

  factory SocketManager() {
    // if (_instance == null) {
    //   _instance = SocketManager._internal();
    // }
    _instance ??= SocketManager._internal();
    return _instance!;
  }

  SocketManager._internal() {
    connectSocket();
  }

  // Getter to access the socket instance
  IO.Socket get socket => _socket;

  void connectSocket() {
    _socket = IO.io(
      serverUrl,
      OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .setExtraHeaders({'foo': 'bar'})
          .enableForceNewConnection()
          .build(),
    );

    _socket.connect();

    _socket.onConnect((_) {
      _socket.emit('SEND_REQUEST_EMERGENT', 'Garage toi choi broooo');
      Logger().t('Connected to $serverUrl completed');
    });

    _socket.onDisconnect((_) {
      Logger().i('disconnect');
    });

    _socket.on('USER_REQUEST_HANDLED', (data) {
      Logger().w('Server talk: $data');
    });
  }

  void disposeSocket() {
    _socket.disconnect();
    _socket.dispose();
    _instance = null;
  }
}
