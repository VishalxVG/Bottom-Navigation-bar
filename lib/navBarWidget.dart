import 'package:flutter/material.dart';

class BottomNavBarWidgetPage extends StatefulWidget {
  const BottomNavBarWidgetPage({super.key});

  @override
  State<BottomNavBarWidgetPage> createState() => _BottomNavBarWidgetPageState();
}

class _BottomNavBarWidgetPageState extends State<BottomNavBarWidgetPage> {
  //TODO We beed to create a variable that will store our current page index number
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Bottom Nav Bar",
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int value) {
          setState(() {
            // we are updating the value of currentpage as we move through pages
            currentPageIndex = value;
          });
        },

        selectedIndex: currentPageIndex,
        destinations: const [
          //TODO If you want to create a icon like the message bar in the document , u can use "Badge"
          NavigationDestination(
              icon: Badge(
                label: Text("2"),
                child: Icon(Icons.home),
              ),
              label: "Home"),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            label: "Saved",
            icon: Icon(Icons.bookmark_border),
          ),
        ],
        //TODO Lets add the content of the pages . For this demo i will only a simple container . U can add any widget according to app requiremnt
      ),
      body: <Widget>[
        // Page 1
        Container(
          color: Colors.yellowAccent,
        ),
        // Page 2
        Container(
          color: Colors.redAccent,
        ),
      ][currentPageIndex],
    );
  }
}
