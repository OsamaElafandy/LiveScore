import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  String team;
  String logoUrl;
  String teamName;
  Stats({Key key, this.logoUrl, this.team, this.teamName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            team,
            style: const TextStyle(
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Image.network(
              logoUrl,
              width: 54.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            teamName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
