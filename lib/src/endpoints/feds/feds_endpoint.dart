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
  Future<List<FedsEvent>> getUpcomingEvents() async {
    return new Fetcher(FedsEvent.serializer, client).fetch([FEDS_EVENTS_ENDPOINT]);
  }

  /// Get's a detailed feds event data model based on the id of the event.
  Future<FedsEventDetailed> getEvent(String id) async {
    return new Fetcher(FedsEventDetailed.serializer, client)
        .fetchSingle([FEDS_EVENTS_ENDPOINT, id]);
  }

  /// Get's location of all the feds services.
  Future<List<FedsLocation>> getLocations() {
    return new Fetcher(FedsLocation.serializer, client).fetch([FEDS_LOCATIONS_ENDPOINT]);
  }
}
