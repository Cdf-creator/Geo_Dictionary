import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geo_dictionary/quiz widget/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  static const routeName = '/screen';

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}
