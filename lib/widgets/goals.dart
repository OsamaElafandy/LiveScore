import 'package:flutter/material.dart';

class Goals extends StatelessWidget {
  int expandedTime;
  int homeGoal;
  int awayGoal;
  Goals({Key key, this.expandedTime, this.homeGoal, this.awayGoal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${expandedTime ?? 0}'",
            style: const TextStyle(
              fontSize: 30.0,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "${homeGoal ?? 0} - ${awayGoal ?? 0}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 36.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
