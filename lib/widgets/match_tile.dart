import 'package:flutter/material.dart';
import 'package:livescore/model/match_score.dart';

class MatchTile extends StatelessWidget {
  MatchSoccer match;
  MatchTile({Key key, this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              match.home.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          Image.network(
            match.home.logoUrl,
            width: 36.0,
          ),
          Expanded(
            child: Text(
              "${match.goal.home ?? 0} - ${match.goal.away ?? 0}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          Image.network(
            match.away.logoUrl,
            width: 36.0,
          ),
          Expanded(
            child: Text(
              match.away.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
