import 'package:flutter/material.dart';
import 'package:flutter_navegacion/src/pages/bicycle_page.dart';
import 'package:flutter_navegacion/src/pages/car_pages.dart';
import 'package:flutter_navegacion/src/pages/direction_page.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Navegacion"),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CarPage(),
            DirectionPage(),
            BicyclePage(),
          ],
        ),
      ),
    );
  }
}
