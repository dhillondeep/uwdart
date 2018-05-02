import 'dart:async';

import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/uw_endpoint.dart';
import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/data/data_response.dart';
import 'package:uwdart/src/endpoints/course/models/course.dart';
import 'package:uwdart/src/endpoints/course/models/course_detailed.dart';
import 'package:uwdart/src/endpoints/course/models/course_exam_schedule.dart';
import 'package:uwdart/src/endpoints/course/models/course_prerequisite.dart';
import 'package:uwdart/src/endpoints/course/models/course_schedule.dart';
import 'package:uwdart/src/endpoints/course/models/course_subject.dart';

/// CourseEndpoint provides a wrapper around the raw course Endpoint from UW Open Data API
/// https://github.com/uWaterloo/api-documentation#course
class CourseEndpoint extends UWEndpoint {
  CourseEndpoint(Client client) : super(client);

  /// Get's all the courses that are offered at the University of Waterloo and provides
  /// a list of [CourseSimple] objects, wrapped inside [DataResponse].
  Future<DataResponse<List<Course>>> getAllCourses() async {
    return new MultipleFetcher<Course>(Course.serializer, client).apply(COURSES_ENDPOINT);
  }

  /// Get's all the courses under the subject provided. It gathers all the courses and provides
  /// a list of [CourseSubject] objects, wrapped inside [DataResponse],.
  Future<DataResponse<List<CourseSubject>>> getCoursesBySubject(String subject) async {
    String args = '${JoinArgs([COURSES_ENDPOINT, subject])}';
    return new MultipleFetcher<CourseSubject>(CourseSubject.serializer, client).apply(args);
  }

  /// Get's a course by it's course ID. It gathers the course and provides a [CourseDetailed] object,
  /// which contains detailed course information. This object is wrapped inside [DataResponse].
  Future<DataResponse<CourseDetailed>> getCourseByCourseId(String courseId) async {
    String args = '${JoinArgs([COURSES_ENDPOINT, courseId])}';
    return new SingleFetcher<CourseDetailed>(CourseDetailed.serializer, client).apply(args);
  }

  /// Get's a course based on the subject and catalog number. It gathers the course data and
  /// provides a [CourseDetailed] object, which contains detailed course information. This object
  /// is wrapped inside [DataResponse].
  Future<DataResponse<CourseDetailed>> getCourseBySubjectCatalog(
      String subject, String catalogNumber) async {
    String args = '${JoinArgs([COURSES_ENDPOINT, subject, catalogNumber])}';
    return new SingleFetcher<CourseDetailed>(CourseDetailed.serializer, client).apply(args);
  }

  /// Get'a course prerequisite based on the subject and catalog number. It gathers the data
  /// and provides a [CoursePrerequisite] object. This object is wrapped inside [DataResponse].
  Future<DataResponse<CoursePrerequisite>> getCoursePrerequisite(
      String subject, String catalogNum) async {
    String args = '${JoinArgs([COURSES_ENDPOINT, subject, catalogNum])}';
    return new SingleFetcher<CoursePrerequisite>(CoursePrerequisite.serializer, client).apply(args);
  }

  /// Get's schedules for a class based on it's class number. It wraps the data in a
  /// [CourseSchedule] object, which contains information related to schedules. This object is
  /// wrapped inside [DataResponse]. It also supports a "term" filter that let's you get the
  /// schedule for previous terms. Just provide a second argument, a 4 digit number in [String].
  Future<DataResponse<List<CourseSchedule>>> getCourseScheduleByClassNumber(String classNumber,
      [String term = ""]) async {
    String args = '${JoinArgs([COURSES_ENDPOINT, classNumber, COURSES_SCHEDULE_ENDPOINT])}';
    return new MultipleFetcher<CourseSchedule>(CourseSchedule.serializer, client)
        .apply(args, {'term': term});
  }

  /// Get's schedule for a course based on it's subject and catalog number. It wraps the data in
  /// [CourseSchedule] object, which provides all sorts of schedule information. This object is
  /// wrapped inside [DataResponse]. It also supports a "term" filter that let's you get the
  /// schedule for previous terms. Just provide a third argument, a 4 digit number in [String].
  Future<DataResponse<List<CourseSchedule>>> getCourseScheduleBySubjectCatalog(
      String subject, String catalogNum,
      [String term = ""]) async {
    String args = '${JoinArgs([COURSES_ENDPOINT, subject, catalogNum, COURSES_SCHEDULE_ENDPOINT])}';
    return new MultipleFetcher<CourseSchedule>(CourseSchedule.serializer, client)
        .apply(args, {'term': term});
  }

  /// Get's schedule for exams based on a course's subject and catalog number. It wraps the
  /// data in a [CourseExamSchedule] object, which provides examination related information. This
  /// object is wrapped inside [DataResponse]. It also supports a "term" filter that let's you get
  /// the schedule for previous terms. Just provide a third argument, a 4 digit number in [String].
  Future<DataResponse<CourseExamSchedule>> getCourseExamScheduleBySubjectCatalog(
      String subject, String catalogNum,
      [String term = ""]) async {
    String args = '${JoinArgs(
        [COURSES_ENDPOINT, subject, catalogNum, COURSES_EXAM_SCHEDULE_ENDPOINT])}';
    return new SingleFetcher<CourseExamSchedule>(CourseExamSchedule.serializer, client)
        .apply(args, {'term': term});
  }
}
