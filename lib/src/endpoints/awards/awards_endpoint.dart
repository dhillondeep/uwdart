import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/data/data_response.dart';
import 'package:uwdart/src/endpoints/awards/models/award.dart';

/// AwardsEndpoint provides a wrapper around the raw Awards Endpoint from UW Open API.
/// https://github.com/uWaterloo/api-documentation#awardsscholarships
class AwardsEndpoint extends UWEndpoint {
  AwardsEndpoint(Client client) : super(client);

  /// Get's a list of all the Graduate Awards at UW. It returns a list of [Award] object
  /// wrapped in [DataResponse].
  Future<DataResponse<List<Award>>> getGraduateAwards() async {
    return new MultipleFetcher<Award>(Award.serializer, client).apply(AWARDS_GRADUATE);
  }

  /// Get's a list of all the Undergraduate Awards at UW. It returns a list of [Award] object
  /// wrapped in [DataResponse].
  Future<DataResponse<List<Award>>> getUndergraduateAwards() async {
    return new MultipleFetcher<Award>(Award.serializer, client).apply(AWARDS_UNDERGRADUATE);
  }
}
