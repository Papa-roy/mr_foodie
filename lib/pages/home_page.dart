import 'package:flutter/material.dart';
import 'package:mr_foodie/components/current_location.dart';
import 'package:mr_foodie/components/description_box.dart';
import 'package:mr_foodie/components/drawer.dart';
import 'package:mr_foodie/components/sliver_app_bar.dart';
import 'package:mr_foodie/components/tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
           MySliverAppBar(
            title: MyTabBar(tabController:  _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Colors.white,
                ),
                MyCurrentLocation(),
                MyDescriptionBox()
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("first tab item"),
            ),
            
             ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("second tab items"),
            ),
            
             ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("third tab item"),
            ),
            
          ],
        )
      ),
    );
  }
}
    