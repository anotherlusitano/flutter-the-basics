import 'package:flutter/material.dart';
import 'location_detail.dart';
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
        itemBuilder: _listViewItemBuilder,
      ),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var location = _locations[index];
    return ListTile(
      contentPadding: const EdgeInsets.all(10),
      leading: _itemThumbnail(location),
      title: _itemTitle(location),
      onTap: () => _navigationToLocationDetail(context, _locations[index]),
    );
  }

  void _navigationToLocationDetail(BuildContext context, Location location) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => LocationDetail(location)));
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
