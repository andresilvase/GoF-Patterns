import '../adpter_interface.dart';

class MessageLogger implements Logger {
  @override
  void log() {
    print('Classe principal escrevendo no console....');
  }
}
