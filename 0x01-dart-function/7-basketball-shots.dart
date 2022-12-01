int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int PointTeamA = (teamA['Free throws'] ?? 0) +
      (teamA['2 pointers'] ?? 0) * 2 +
      (teamA['3 pointers'] ?? 0) * 3;

  int PointTeamB = (teamB['Free throws'] ?? 0) +
      (teamB['2 pointers'] ?? 0) * 2 +
      (teamB['3 pointers'] ?? 0) * 3;

  if (PointTeamA == PointTeamB) return 0;

  return PointTeamA > PointTeamB ? 1 : 2;
}
