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

  await CloseConnection(client);   // close the connection after you are done

  /*
  Check documentation of the CourseAPI for information about more methods or check the
  UW API to get information about what ia available
   */
}
