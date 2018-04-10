import 'package:dartson/dartson.dart';

/// This Data Model wraps data related to API methods that are available for every service.
@Entity()
class ApiMethod {
  int _methodId;
  String _methodUrl;
  int _serviceId;
  String _serviceName;
  List<String> _parameters;

  int get methodId => _methodId;

  String get methodUrl => _methodUrl;

  int get serviceId => _serviceId;

  String get serviceName => _serviceName;

  List<String> get parameters => _parameters;

  @Property(name: "method_id")
  set methodId(int value) {
    _methodId = value;
  }

  @Property(name: "method_url")
  set methodUrl(String value) {
    _methodUrl = value;
  }

  set parameters(List<String> value) {
    _parameters = value;
  }

  @Property(name: "service_name")
  set serviceName(String value) {
    _serviceName = value;
  }

  @Property(name: "service_id")
  set serviceId(int value) {
    _serviceId = value;
  }
}
