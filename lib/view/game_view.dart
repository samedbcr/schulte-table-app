import 'package:SchulteTableApp/model/game_model.dart';
import 'package:SchulteTableApp/view_model/game_view_model.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  GameViewModel _viewModel;

  List<GameModel> _gameList;

  @override
  void initState() {
    _viewModel = GameViewModel(
      level: 4,
      startNumber: 1,
      incrementCount: 1,
    );
    _gameList = _viewModel.gameList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: buildBody(context),
    );
  }

  SafeArea buildBody(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            _buildGameInfoText(context),
            SizedBox(height: 12.0),
            _buildGameTable()
          ],
        ),
      ),
    );
  }

  Column _buildGameInfoText(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Mode: Classic Light',
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(height: 16),
        Text(
          'Focus in the center box of table. Try to see whole table.',
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Text(
          'Click on the numbers in ascending order.',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Expanded _buildGameTable() {
    return Expanded(
      child: Center(
        child: GridView.builder(
          primary: false,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _viewModel.level,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
          ),
          itemBuilder: (BuildContext context, index) {
            return AnimatedOpacity(
              opacity: _gameList[index].isVisible ? 1 : 0,
              duration: Duration(milliseconds: 150),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: () {
                  if (_viewModel.isClickedValueCorrect(
                      _gameList[index].value, index)) {
                    setState(() {});
                  }
                },
                child: Text(
                  _gameList[index].value.toString(),
                ),
              ),
            );
          },
          itemCount: _gameList.length,
        ),
      ),
    );
  }
}

/* 
GridView.count(
          primary: false,
          shrinkWrap: true,
          crossAxisCount: 4,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          children: [
            ..._gameList.map(
              (e) => AnimatedOpacity(
                opacity: e.isVisible ? 1 : 0,
                duration: Duration(milliseconds: 200),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {
                    if (_viewModel.isClickedValueCorrect(e.value, 0)) {
                      setState(() {});
                    }
                  },
                  child: Text(
                    e.value.toString(),
                  ),
                ),
              ),
            ),
          ],
        ),
*/
