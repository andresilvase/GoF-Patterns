import 'adaptee/adaptee.dart';
import 'adptation/other_log_messager.dart';
import 'log_service.dart';
import 'target/main_log_messager.dart';

void runAdapter() {
  print('\n##Adapter running example:');

  var mainClass = LogService(MessageLogger());
  mainClass.write();

  var adapteeClass = LogService(LogAdapter(OtherLogMessage()));
  adapteeClass.write();
}
