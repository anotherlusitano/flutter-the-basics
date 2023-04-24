import 'package:flutter/material.dart';
import 'styles.dart';

import 'models/location.dart';

class LocationList extends StatelessWidget {
  final List<Location> _locations;

  const LocationList(this._locations, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Locations',
          style: Styles.navBarTitle,
        ),
      ),
      body: ListView.builder(
        itemCount: _locations.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: const EdgeInsets.all(10),
            leading: _itemThumbnail(_locations[index]),
            title: _itemTitle(_locations[index]),
          );
        },
      ),
    );
  }

  Widget _itemThumbnail(Location location) {
    return Container(
      constraints: const BoxConstraints.tightFor(width: 100.0),
      child: Image.network(
        location.url,
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget _itemTitle(Location location) {
    return Text(
      location.name,
      style: Styles.textDefault,
    );
  }
}
