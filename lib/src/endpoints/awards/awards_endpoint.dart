import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/endpoints/awards/models/award.dart';

/// AwardsEndpoint provides a wrapper around the raw Awards Endpoint from UW Open API.
/// https://github.com/uWaterloo/api-documentation#awardsscholarships
class AwardsEndpoint extends UWEndpoint {
  AwardsEndpoint(Client client) : super(client);

  /// Get's a list of all the Graduate Awards at UW
  Future<List<Award>> getGraduateAwards() async {
    return new Fetcher(Award.serializer, client).fetch([AWARDS_GRADUATE]);
  }

  /// Get's a list of all the Undergraduate Awards at UW
  Future<List<Award>> getUndergraduateAwards() async {
    return new Fetcher(Award.serializer, client).fetch([AWARDS_UNDERGRADUATE]);
  }
}
