import 'package:flutter/material.dart';
import 'package:geo_dictionary/models/terminologies.dart';
import 'quiz widget/welcome_screen.dart';
import './terminologies_screen.dart';
import './favorited_screen.dart';
import './search_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Terminology> favoriteWords;
  TabsScreen(this.favoriteWords);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;

  @override
  void initState() {
    _pages = [
      {
        'page': TerminologiesScreen(),
        'title': 'GeoDictionary',
      },
      {
        'page': SearchScreen(),
        'title': 'Search Minerals',
      },
      {
        'page': FavoritedScreen(widget.favoriteWords),
        'title': 'Favorites',
      },
      {
        'page': WelcomeScreen(),
        'title': 'Quiz',
      },
    ];
    super.initState();
  }

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      //drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).accentColor,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).accentColor,
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).accentColor,
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).accentColor,
            icon: Icon(Icons.play_arrow_sharp),
            label: 'Quiz',
          ),
        ],
      ),
    );
  }
}
