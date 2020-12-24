import 'package:SchulteTableApp/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildWelcomeTextGroup(context),
            Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/svg/play.svg',
                      height: 30,
                      width: 30,
                    ),
                    label: Text(
                      'Play now!',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              ),
            ),
            buildMadeByText(context),
          ],
        ),
      ),
    );
  }

  Expanded buildWelcomeTextGroup(BuildContext context) {
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
                  text: '42 secs!',
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

  Expanded buildMadeByText(BuildContext context) {
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