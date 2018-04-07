import 'dart:async';
import 'package:uwdart/uwdart.dart';

String apiKey = "KEY GOES HERE";

Future main() async {
  // create a client by providing it a key
  var client = OpenConnection(apiKey);

  // Create Course API to use Course Endpoints
  CourseAPI courseAPI = new CourseAPI(client);

  // Create News API to use News Endpoints
  NewsAPI newsAPI = new NewsAPI(client);

  // close the connection
  await CloseConnection(client);

  /*
  Check example files for each individual endpoint to learn more ex: course_example.dart.
   */
}
