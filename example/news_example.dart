import 'dart:async';
import 'package:uwdart/uwdart.dart';

String apiKey = "KEY GOES HERE";

Future main() async {
  // create a client by providing it a key
  var client = OpenConnection(apiKey);

  // Create News API to use News Endpoints
  NewsAPI newsAPI = new NewsAPI(client);

  // Gives access to all the news available at UW (top 100)
  await newsAPI.GetAllNews().then((news) async {
    for (var currNews in news) {
      // get news and the link
      print(currNews.title + "    ->   " + currNews.link);

      String site = currNews.site;
      num id = currNews.id;

      // using site and id detail news article can be gathered
      await newsAPI.GetNewsBySiteAndID(site, id).then((detailedNews) {
        print("IMAGE of ${currNews.id}:  ${detailedNews.image.url}");
      });
    }
  });

  await CloseConnection(client);   // close the connection after you are done

  /*
  Check documentation of the NewsAPI for information about more methods or check the
  UW API to get information about what ia available
   */
}
