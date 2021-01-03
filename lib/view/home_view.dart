import 'package:SchulteTableApp/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = HomeViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildWelcomeTextGroup(context),
            _buildButton(context),
            _buildMadeByText(context),
          ],
        ),
      ),
    );
  }

  Expanded _buildWelcomeTextGroup(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('Welcome, Samed!', style: Theme.of(context).textTheme.headline5),
          SizedBox(height: 16),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Your best score is ',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                TextSpan(
                  text: '${_viewModel.bestScore} secs!',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildButton(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/game').then((value) {
                if (_viewModel.isBestScoreChanged(value)) {
                  setState(() {});
                }
              });
            },
            icon: SvgPicture.asset(
              'assets/svg/play.svg',
              height: 30,
              width: 30,
            ),
            label: Text(
              'Play Game!',
              style: Theme.of(context).textTheme.button,
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildMadeByText(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Center(
        child: Text(
          '© made by samedbcr',
          style: Theme.of(context).textTheme.caption,
        ),
      ),
    );
  }
}
