import 'dart:async';
import 'package:uwdart/uwdart.dart';

String apiKey = "KEY GOES HERE";

Future main() async {
  // create a client by providing it a key
  var client = OpenConnection(apiKey);

  // Create CourseEndpoint object to use Course Endpoints
  CourseEndpoint courseEndpoint = new CourseEndpoint(client);

  // Gives access to all the courses available at UW
  await courseEndpoint.getAllCourses().then((courses) async {
    for (int i = 0; i < 50; i++ ) {
      print("Title: " + courses[i].title);
      String catalogNum =  courses[i].catalogNumber;
      String subject = courses[i].subject;

      // based on the subject and catalog number, get detailed info about the package
      await courseEndpoint.getCourseBySubjectCatalog(subject, catalogNum).then((course) {
        print("-> URL for ${courses[i].catalogNumber}: " + course.url);
      });
    }
    print("");
  });

  // Create NewsEndpoint object to use News Endpoints
  NewsEndpoint newsEndpoint = new NewsEndpoint(client);

  // Gives access to all the news available at UW (top 100)
  await newsEndpoint.GetAllNews().then((news) async {
    for (var currNews in news) {
      // get news and the link
      print(currNews.title + "    ->   " + currNews.link);

      String site = currNews.site;
      num id = currNews.id;

      // using site and id detail news article can be gathered
      await newsEndpoint.GetNewsBySiteAndID(site, id).then((detailedNews) {
        print("IMAGE of ${currNews.id}:  ${detailedNews.image.url}");
      });
    }
  });

  // close the connection when all done
  await CloseConnection(client);

  /*
  These are few examples on using endpoints to access data for various UW API services. Other
  endpoints are similar and their documentation can be checked for details about their
  functionality and Data structure their provide.
   */
}
