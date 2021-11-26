import 'dart:convert';
import 'package:http/http.dart';
import 'package:livescore/model/match_score.dart';

class ApiService {
  final String apiUrl = //
      "https://v3.football.api-sports.io/fixtures?season=2021&league=39";

  static const headers = {
    'x-rapidapi-host': "https://v3.football.api-sports.io",
    //Todo here put ur API_KEY It has limt make sure it still work
    'x-rapidapi-key':
        "f08614f87b53ded43c0362211e35cc03" // ! remove it and Put Ur APIKey from https://www.api-football.com/
  };

  Future<List<MatchSoccer>> getAllMatches() async {
    var url = Uri.parse(apiUrl);

    Response res = await get(url, headers: headers);
    var body;
    List<MatchSoccer> matches;
    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];

      matches = matchesList
          .map((dynamic item) => MatchSoccer.fromJson(item))
          .toList();

      return matches;
    }
    return matches = [];
  }
}
