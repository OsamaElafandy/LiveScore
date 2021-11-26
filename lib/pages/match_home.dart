import 'package:flutter/material.dart';
import 'package:livescore/widgets/goals.dart';
import 'package:livescore/model/match_score.dart';
import 'package:livescore/widgets/match_tile.dart';
import 'package:livescore/widgets/stats.dart';

class MatchHome extends StatelessWidget {
  List<MatchSoccer> allmatches;
  MatchHome({
    Key key,
    this.allmatches,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stats(
                    team: "Local Team",
                    logoUrl: allmatches[0].home.logoUrl,
                    teamName: allmatches[0].home.name),
                Goals(
                    expandedTime: allmatches[0].fixture.status.elapsedTime,
                    homeGoal: allmatches[0].goal.home,
                    awayGoal: allmatches[0].goal.away),
                Stats(
                    team: "Visitor Team",
                    logoUrl: allmatches[0].away.logoUrl,
                    teamName: allmatches[0].away.name),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 37, 44, 66),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "MATCHES",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: allmatches.length,
                      itemBuilder: (context, index) {
                        return MatchTile(match: allmatches[index]);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
