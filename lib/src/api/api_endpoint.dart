import 'dart:async';
import 'package:uwdart/src/api/model/api_changelog.dart';
import 'package:uwdart/src/api/model/api_method.dart';
import 'package:uwdart/src/api/model/api_service.dart';
import 'package:uwdart/src/api/model/api_usage.dart';
import 'package:uwdart/src/api/model/api_version.dart';
import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/data/response_parser.dart';

class ApiEndpoint extends UWEndpoint{
  ApiEndpoint(Client client) : super(client);

  Future<ApiUsage> getUsage()  async {
    return createRequest(client, [API_USAGE_ENDPOINT]).then((data) async {
      return new ResponseParser<ApiUsage>(data).parse(new ApiUsage());
    });
  }

  Future<List<ApiService>> getServices()  async {
    return createRequest(client, [API_SERVICES_ENDPOINT]).then((data) async {
      return new ResponseParser<ApiService>(data).parse(new ApiService());
    });
  }

  Future<List<ApiMethod>> getMethods()  async {
    return createRequest(client, [API_METHODS_ENDPOINT]).then((data) async {
      return new ResponseParser<ApiMethod>(data).parse(new ApiMethod());
    });
  }

  Future<List<ApiVersion>> getVersions()  async {
    return createRequest(client, [API_VERSIONS_ENDPOINT]).then((data) async {
      return new ResponseParser<ApiVersion>(data).parse(new ApiVersion());
    });
  }

  Future<List<ApiChangelog>> getChangelog()  async {
    return createRequest(client, [API_CHANGELOG_ENDPOINT]).then((data) async {
      return new ResponseParser<ApiChangelog>(data).parse(new ApiChangelog());
    });
  }
}
