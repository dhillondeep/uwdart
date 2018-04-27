import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/endpoints/feds/models/feds_event.dart';
import 'package:uwdart/src/endpoints/feds/models/feds_events_detailed.dart';
import 'package:uwdart/src/endpoints/feds/models/feds_location.dart';

/// FedsEndpoint provides a wrapper around the raw Feds events and location data
/// https://github.com/uWaterloo/api-documentation#feds
class FedsEndpoint extends UWEndpoint {
  FedsEndpoint(Client client) : super(client);

  /// Get's all the upcoming feds events and provides a basic data model.
  Future<List<FedsEvent>> getUpcomingEvents() {
    return CreateRequest(client, [FEDS_EVENTS_ENDPOINT])
        .then((data) => new ResponseParser<FedsEvent>().parse(data));
  }

  /// Get's a detailed feds event data model based on the id of the event.
  Future<FedsEventDetailed> getEvent(String id) {
    return CreateRequest(client, [FEDS_EVENTS_ENDPOINT, id])
        .then((data) => new ResponseParser<FedsEventDetailed>().parse(data)[0]);
  }

  /// Get's location of all the feds services.
  Future<List<FedsLocation>> getLocations() {
    return CreateRequest(client, [FEDS_LOCATIONS_ENDPOINT])
        .then((data) => new ResponseParser<FedsLocation>().parse(data));
  }
}
