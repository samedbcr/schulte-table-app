import 'package:SchulteTableApp/model/game_model.dart';

class GameViewModel {
  final int level;
  final int incrementCount;
  int startNumber;
  int _counterIndex = 0;
  bool isGameOver = false;

  List<GameModel> _gameList;

  // ignore: slash_for_doc_comments
  /**
   * [level] field is the level of the game and 
   * it used for generate the length of the list with
   *  square of its value. [default => 4]
   * 
   * [incrementCount] field is the number of the increment value
   * [default => 1]
   * 
   * [startNumber] field is the start value of the game.
   * It also holds the value of next necessary clicked number.
   * [default => 1]
   */

  GameViewModel(
      {this.level = 4, this.incrementCount = 1, this.startNumber = 1}) {
    this._gameList = List.generate(
      level * level,
      (index) => GameModel(
          isVisible: true, value: index * incrementCount + startNumber),
    );
    this._gameList.shuffle();
  }

  bool isClickedValueCorrect(int clickedValue, int index) {
    /**
     * It checks if the clicked value is the true number
     */
    if (clickedValue == startNumber) {
      gameList[index].isVisible = false;
      startNumber += incrementCount;
      _counterIndex++;
      if (_counterIndex == level * level) {
        isGameOver = true;
      }
      return true;
    }
    return false;
  }

  List<GameModel> get gameList => _gameList;
}

/**
 * 1- raw list olustur [1, 2, 3, 4, ..., 16]
 * 2- shuffled List olustur 
 *    - GameModel: false, 12
 *    - GameModel: false, 1
 *    - GameModel: false, 7
 *    - ....
 * 3- GameModel
 */
