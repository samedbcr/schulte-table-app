import 'package:SchulteTableApp/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDialog extends StatelessWidget {
  final int point;

  const CustomDialog({Key key, this.point}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height * .50,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSvgPicture(),
            SizedBox(height: 6),
            buildCongratsText(context),
            SizedBox(height: 8),
            buildYouMadeText(context),
            SizedBox(height: 6),
            buildPointText(context),
            SizedBox(height: 6),
            buildSecondsText(context),
            SizedBox(height: 12),
            buildOkButton(context),
          ],
        ),
      ),
    );
  }

  Expanded buildSvgPicture() {
    return Expanded(
      child: SvgPicture.asset("assets/svg/winners.svg"),
    );
  }

  Text buildCongratsText(BuildContext context) {
    return Text(
      "Congratulations!",
      style: Theme.of(context)
          .textTheme
          .headline6
          .copyWith(color: AppConstants.primaryColor),
    );
  }

  Text buildYouMadeText(BuildContext context) {
    return Text(
      "You made it in",
      style: Theme.of(context).textTheme.bodyText1.copyWith(
            color: AppConstants.primaryColor,
            fontWeight: FontWeight.w500,
          ),
    );
  }

  Text buildPointText(BuildContext context) {
    return Text(
      point.toString(),
      style: Theme.of(context).textTheme.headline4.copyWith(
            color: AppConstants.primaryColor,
          ),
    );
  }

  Text buildSecondsText(BuildContext context) {
    return Text(
      "seconds!",
      style: Theme.of(context).textTheme.bodyText2.copyWith(
            color: AppConstants.primaryColor,
            fontWeight: FontWeight.w500,
          ),
    );
  }

  ElevatedButton buildOkButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.done_rounded,
        color: AppConstants.lightColor,
      ),
      label: Text(
        'OK!',
        style: Theme.of(context)
            .textTheme
            .button
            .copyWith(color: AppConstants.lightColor),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
        primary: AppConstants.primaryColor,
      ),
    );
  }
}
