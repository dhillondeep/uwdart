import 'package:dartson/dartson.dart';

/// This Data Model wraps data related to API usage by the user of the key. It contains
/// information about the name, key, monthly calls, and total calls.
@Entity()
class ApiUsage {
  String _name;
  String _apiKey;
  int _monthlyCalls;
  int _totalCalls;

  String get name => _name;

  String get apiKey => _apiKey;

  int get totalCalls => _totalCalls;

  int get monthlyCalls => _monthlyCalls;

  set name(String value) {
    _name = value;
  }

  @Property(name: "total_calls")
  set totalCalls(int value) {
    _totalCalls = value;
  }

  @Property(name: "monthly_calls")
  set monthlyCalls(int value) {
    _monthlyCalls = value;
  }

  @Property(name: "api_key")
  set apiKey(String value) {
    _apiKey = value;
  }
}
