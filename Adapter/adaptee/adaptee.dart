import '../adptation/other_log_messager.dart';
import '../adpter_interface.dart';

class LogAdapter implements Logger {
  LogAdapter(this.otherLogMessage);

  final OtherLogMessage otherLogMessage;

  @override
  void log() {
    otherLogMessage.otherLog();
  }
}
