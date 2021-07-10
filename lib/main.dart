import 'package:flutter/material.dart';
import 'package:geo_dictionary/dummy_data.dart';
import 'package:geo_dictionary/models/terminologies.dart';
import 'package:get/route_manager.dart';
import './tab_screen.dart';
import 'package:flutter/services.dart';
import './each_word_meaning.dart';
import './terminologies_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Terminology> _favoriteWords = [];

  void _toggleFavorite(String mealId) {
    final existingIndex =
        _favoriteWords.indexWhere((meal) => meal.id == mealId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteWords.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteWords.add(
          Dummy_Items.firstWhere((meal) => meal.id == mealId),
        );
      });
    }
  }

  bool _isWordFavorite(String id) {
    return _favoriteWords.any((meal) => meal.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.indigo,
        //canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
              fontSize: 18,
              fontFamily: 'RobotoCondensed',
              //fontWeight: FontWeight.bold,
            )),
      ),
      //home: TabsScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => TabsScreen(_favoriteWords),
        EachWordMeaning.routeName: (ctx) =>
            EachWordMeaning(_toggleFavorite, _isWordFavorite),
      },
      /*onGenerateRoute: (settings) {
        print(settings.arguments);
        // if (settings.name == '/meal-detail') {
        //   return ...;
        // } else if (settings.name == '/something-else') {
        //   return ...;
        // }
        // return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
      },*/
      /*onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },*/
    );
  }
}
