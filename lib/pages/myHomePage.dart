import 'package:flutter/material.dart';

import 'overview.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Total refomer pilates",
            ),
            elevation: 0.0,
            centerTitle: true,
            // leading: InkWell(
            //   child: Icon(Icons.arrow_back),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Overview',
                ),
                Tab(
                  text: 'classes',
                ),
                Tab(
                  text: 'community',
                ),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              OverviewScreen(),
              OverviewScreen(),
              OverviewScreen(),
            ],
          )), //
    );
  }
}
