# Changelog

All notable changes to this project will be documented in this file.

## 0.0.1 - 2018-04-06
### Added
- Functions to make HTTP request and get data as JSON. Data is then parsed into maps.
- News API and Course API implementation finished.
- Documentation added for both APIs and made them consistent.
- Examples added for CourseAPI and NewsAPI.
- Version 0.0.1 published.

## 0.0.3 - 2018-04-9
### Added
- Implemented and documented API endpoint.
- A Generic example added for all the Endpoints since they are similar.
- Version 0.0.3 published.

### Modified
- Renamed CourseAPI, NewsAPI, UWAPI to CourseEndpoint, NewsEndpoint, and UWEndpoint respectively.
- Deleted individual examples for course and news endpoints.
- Internally modified how map data was being deserialize to objects.
- Added static types of OpenConnection and CloseConnection.