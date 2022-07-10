import 'location_detail.dart';
import 'package:flutter/material.dart';
import 'models/location.dart';
import 'styles.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;

  LocationList(this.locations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Locations', style: Styles.navBarTitle)),
        body: ListView.builder(
            itemCount: locations.length,
            itemBuilder: _listViewItemBuilder,
        ));
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    return ListTile(
        contentPadding: EdgeInsets.all(10.0),
        leading: _itemThumbnail(locations[index]),
        title: _itemTitle(locations[index]),
        onTap: () => _navigateToLocationDetail(context, index));
  }

  void _navigateToLocationDetail(BuildContext context, int locationId) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocationDetail(locationId),
        ));
  }

  Widget _itemThumbnail(Location location) {
    return Container(
        constraints: BoxConstraints.tightFor(width: 100.0),
        child: Image.network(location.url, fit: BoxFit.fitWidth));
  }

  Widget _itemTitle(Location location) {
    return Text(location.name, style: Styles.textDefault);
  }
}
