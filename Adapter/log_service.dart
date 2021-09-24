import 'adpter_interface.dart';

class LogService {
  LogService(this.logger);
  final Logger logger;

  void write() {
    logger.log();
  }
}
