import 'dart:async';
import 'package:uwdart/uwdart.dart';

String apiKey = "KEY GOES HERE";

Future main() async {
  // create a client by providing it a key
  var client = OpenConnection(apiKey);

  // Create CourseEndpoint object to use Course Endpoints
  CourseEndpoint courseEndpoint = new CourseEndpoint(client);

  // Create NewsEndpoint object to use News Endpoints
  NewsEndpoint newsEndpoint = new NewsEndpoint(client);

  // close the connection
  await CloseConnection(client);

  /*
  Check example files for each individual endpoint to learn more ex: course_example.dart.
   */
}
