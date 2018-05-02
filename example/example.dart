import 'dart:async';
import 'dart:io';
import 'package:uwdart/uwdart_io.dart';

Future main() async {
  String apiKey = await new File('key.txt').readAsString();

  // Create the client
  UWDart uwClient = new UWDart(apiKey);

  // create raw requests
  uwClient.makeRawRequest('courses/CS/245').then((data) {
    print(data.data);
    print('------------------------------------------------------');
    print('------------------------------------------------------\n');
  });

  final courses = await uwClient.course.getAllCourses();

  // The request to the api returns meta data which can be used by the user
  print(courses.meta);

  // For actual endpoint data, get it using data getter
  final courseData = courses.data;

  print('------------------------------------------------------');
  print('------------------------------------------------------\n');

  for (int i = 0; i < 50; i++) {
    String catalogNum = courseData[i].catalogNumber;
    String subject = courseData[i].subject;

    final courseSubject = await uwClient.course.getCourseBySubjectCatalog(subject, catalogNum);

    print('Course Name: ${courseData[i].title}');
    print('Course Subject: ${courseData[i].subject}');
    print('Course Catalog: ${courseData[i].catalogNumber}');
    print('Course ID: ${courseSubject.data.courseId}');
    print('Course Url: ${courseSubject.data.url}');
    print('------------------------------------------------------');
  }
  print('------------------------------------------------------\n');

  final news = await uwClient.news.getNews();

  for (final article in news.data) {
    String articleTitle = article.title;
    int articleID = article.id;
    String articleSite = article.site;
    String articleLink = article.link;

    print('News Article Title: ${articleTitle}');
    print('News Article ID: ${articleID}');
    print('News Article Site: ${articleSite}');
    print('News Article Link: ${articleLink}');
    print('------------------------------------------------------');
  }

  // close the connection when all done
  uwClient.close();
}
