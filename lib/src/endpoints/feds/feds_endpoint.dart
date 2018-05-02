import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/data/data_response.dart';
import 'package:uwdart/src/endpoints/feds/models/feds_event.dart';
import 'package:uwdart/src/endpoints/feds/models/feds_events_detailed.dart';
import 'package:uwdart/src/endpoints/feds/models/feds_location.dart';

/// FedsEndpoint provides a wrapper around the raw Feds events and location data
/// https://github.com/uWaterloo/api-documentation#feds
class FedsEndpoint extends UWEndpoint {
  FedsEndpoint(Client client) : super(client);

  /// Get's all the upcoming feds events and provides a basic data model as a list of [FedsEvent]
  /// objects wrapped inside [DataResponse].
  Future<DataResponse<List<FedsEvent>>> getUpcomingEvents() async {
    return new MultipleFetcher<FedsEvent>(FedsEvent.serializer, client).apply(FEDS_EVENTS_ENDPOINT);
  }

  /// Get's a detailed feds event data model based on the id of the event. It returns a
  /// [FedsEventDetailed] object wrapped inside [DataResponse]
  Future<DataResponse<FedsEventDetailed>> getEvent(String id) async {
    String args = '${JoinArgs([FEDS_EVENTS_ENDPOINT, id])}';

    return new SingleFetcher<FedsEventDetailed>(FedsEventDetailed.serializer, client).apply(args);
  }

  /// Get's location of all the feds services. It returns a list of [FedsLocation] objects wrapped
  /// inside [DataResponse].
  Future<DataResponse<List<FedsLocation>>> getLocations() async {
    return new MultipleFetcher<FedsLocation>(FedsLocation.serializer, client)
        .apply(FEDS_LOCATIONS_ENDPOINT);
  }
}
