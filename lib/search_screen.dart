import 'package:flutter/material.dart';
import 'package:geo_dictionary/swiper.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (cdf, constraints) {
      return Scaffold(
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Search Minerals',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'RobotoCondensed',
                      color: Colors.pinkAccent,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 35,
                      color: Colors.pinkAccent,
                    ),
                    onPressed: () async {
                      showSearch(context: context, delegate: CitySearch());

                      // final results = await
                      //     showSearch(context: context, delegate: CitySearch());

                      // print('Result: $results');
                    },
                  ),
                ],
              ),
            ),
            Container(height: constraints.maxHeight * 0.7, child: MyHomePage())
          ],
        ),
      );
    });
  }
}

class CitySearch extends SearchDelegate<String> {
  final minerals = [
    'Andalusite',
    'Anhydrite',
    'Apatite',
    'Arsenopyrite',
    'Augite',
    'Azurite',
    'Barite',
    'Bauxite',
    'Benitoite',
    'Beryl',
    'Biotite',
    'Bornite',
    'Calcite',
    'Cassiterite',
    'Chalcopyrite',
    'Charoite',
    'Chlorite',
    'Chromite',
    'Chrysoberyl',
    'Cinnabar',
    'Clinozoisite',
    'Copper',
    'Cordierite',
    'Corundum',
    'Diamond',
    'Diopside',
    'Dolomite',
    'Epidote',
  ];

  final recentMinerls = [
    'Andalusite',
    'Anhydrite',
    'Apatite',
    'Arsenopyrite',
    'Augite',
    'Azurite',
    'Barite',
    'Bauxite',
    'Benitoite',
    'Beryl',
    'Biotite',
    'Bornite',
    'Calcite',
    'Cassiterite',
    'Chalcopyrite',
    'Charoite',
    'Chlorite',
    'Chromite',
    'Chrysoberyl',
    'Cinnabar',
    'Clinozoisite',
    'Copper',
    'Cordierite',
    'Corundum',
    'Diamond',
    'Diopside',
    'Dolomite',
    'Epidote',
  ];

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
              showSuggestions(context);
            }
          },
        )
      ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_city, size: 120),
            const SizedBox(height: 48),
            Text(
              query,
              style: TextStyle(
                color: Colors.black,
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recentMinerls
        : minerals.where((city) {
            final cityLower = city.toLowerCase();
            final queryLower = query.toLowerCase();

            return cityLower.startsWith(queryLower);
          }).toList();

    return buildSuggestionsSuccess(suggestions);
  }

  Widget buildSuggestionsSuccess(List<String> suggestions) => ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];
          final queryText = suggestion.substring(0, query.length);
          final remainingText = suggestion.substring(query.length);

          return ListTile(
            onTap: () {
              query = suggestion;
              showResults(context);
            },
            leading: Icon(Icons.location_city),
            // title: Text(suggestion),
            title: RichText(
              text: TextSpan(
                text: queryText,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: remainingText,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
}
