import 'dart:async';
import 'dart:io';
import 'package:uwdart/uwdart_io.dart';

Future main() async {
  String apiKey = await new File('key.txt').readAsString();

  // Create the client
  UWDart uwClient = new UWDart(apiKey);

  // create raw requests
  uwClient.makeRawRequest(["foodservices", "watcard"]).then((data) {
    print(data.raw);
  });

  // Gives access to all the courses available at UW
  await uwClient.course.getAllCourses().then((courses) async {
    for (int i = 0; i < 50; i++) {
      print("Title: " + courses[i].title);
      String catalogNum = courses[i].catalogNumber;
      String subject = courses[i].subject;

      // based on the subject and catalog number, get detailed info about the package
      await uwClient.course.getCourseBySubjectCatalog(subject, catalogNum).then((course) {
        print("-> URL for ${courses[i].catalogNumber}: " + course.url);
      });
    }
    print("");
  });

  // Gives access to all the news available at UW (top 100)
  await uwClient.news.GetNews().then((news) async {
    for (var currNews in news) {
      // get news and the link
      print(currNews.title + "    ->   " + currNews.link);

      String site = currNews.site;
      num id = currNews.id;
      print("---------> Site: ${site} ------> ID: ${id}");
    }
  });

  // close the connection when all done
  await uwClient.close();
}
