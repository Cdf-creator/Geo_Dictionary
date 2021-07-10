import 'package:flutter/material.dart';
import 'package:geo_dictionary/each_word_meaning.dart';

class TerminologiesItem extends StatelessWidget {
  final String id;
  final geoTerm;
  TerminologiesItem(this.id, this.geoTerm);

  void _selectWord(BuildContext context) {
    Navigator.of(context).pushNamed(
      EachWordMeaning.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ListTile(
            onTap: () => _selectWord(context),

            /*() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EachWordMeaning()));
            },*/
            title: Text(
              geoTerm,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Divider(
            thickness: 1.5,
            height: 3.0,
          ),
        ],
      ),
    );
  }
}
