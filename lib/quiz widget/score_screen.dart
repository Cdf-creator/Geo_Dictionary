import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constants.dart';
import './controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatefulWidget {
  static const routeName = '/screening';

  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 3),
              /*TextButton(
                  onPressed: _qnController.change,
                  child: Text(
                    "Restart Quiz",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Color(0xFF00FFCB), fontSize: 20),
                  )),*/
              //Spacer(),
              //Spacer(),
              Spacer(flex: 2),
            ],
          )
        ],
      ),
    );
  }
}
