import 'package:flutter/material.dart';
import 'dummy_data.dart';

class ImageForEachWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final terminologyId = ModalRoute.of(context).settings.arguments as String;
    final selectedTerminology = Dummy_Items.firstWhere(
      (terminology) => terminology.id == terminologyId,
    );
    return Image.network(
      selectedTerminology.imageUrl,
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
