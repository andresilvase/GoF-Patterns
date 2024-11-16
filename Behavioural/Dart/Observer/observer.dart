// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Observer {
  void update(String msg);
}

class Employee extends Observer {
  String name;
  int id;

  Employee({
    required this.name,
    required this.id,
  });

  @override
  void update(String msg) {
    print("$name, $msg");
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Employee && other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
