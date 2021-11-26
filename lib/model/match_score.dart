class MatchSoccer {
  Fixture fixture;
  Team home;
  Team away;
  Goal goal;
  MatchSoccer(this.fixture, this.home, this.away, this.goal);

  factory MatchSoccer.fromJson(Map<String, dynamic> json) {
    return MatchSoccer(
        Fixture.fromJson(json['fixture']),
        Team.fromJson(json['teams']['home']),
        Team.fromJson(json['teams']['away']),
        Goal.fromJson(json['goals']));
  }
}

//todo store the fixture
class Fixture {
  int id;
  String date;
  Status status;
  Fixture(this.id, this.date, this.status);

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(json['id'], json['date'], Status.fromJson(json['status']));
  }
}

//todo store the Status
class Status {
  int elapsedTime;
  String long;
  Status(this.elapsedTime, this.long);

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(json['elapsed'], json['long']);
  }
}

//todo store the Team data
class Team {
  int id;
  String name;
  String logoUrl;
  bool winner;
  Team(this.id, this.name, this.logoUrl, this.winner);

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(json['id'], json['name'], json['logo'], json['winner']);
  }
}

//todo store the Goal data
class Goal {
  int home;
  int away;
  Goal(this.home, this.away);

  // todo  factory method to copy the data from the json file

  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(json['home'], json['away']);
  }
}
