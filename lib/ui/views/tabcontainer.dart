import 'package:accountdetails/ui/views/home_view.dart';
import 'package:flutter/material.dart';

class TabContainer extends StatelessWidget {
  const TabContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            HomeView(),
          ],
        ),
      ),
    );
  }
}
