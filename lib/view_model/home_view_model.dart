class HomeViewModel {
  int bestScore = 0;

  bool isBestScoreChanged(int newScore) {
    if (bestScore == 0 || newScore < bestScore) {
      bestScore = newScore;
      return true;
    }
    return false;
  }
}
