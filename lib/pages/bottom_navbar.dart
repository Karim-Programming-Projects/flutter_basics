import 'package:flutter/material.dart';
import 'package:food_app/pages/favorites_page.dart';
import 'package:food_app/pages/home_page.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int selectedIndex = 0;
  void onItemTapped(int newIndex){
    setState(() {
      selectedIndex = newIndex;
    });
  }
  List<Widget> bodyOptions =[
    HomePage(),
    FavoritesPage(),
    Center(child: Text('Profile'),),
  ];
  final List<Color> _iconColors = [
    Colors.blue,
    Colors.pinkAccent,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90),
          child: const Text(
            'Foodak',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: const Drawer(child: Center(child: Text('Drawer'))),
      body: bodyOptions[selectedIndex] ,
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(selectedIndex == 0 ? Icons.home : Icons.home_outlined, color: _iconColors[0],), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(selectedIndex == 1 ? Icons.favorite : Icons.favorite_border, color: _iconColors[1],), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(selectedIndex == 2 ? Icons.person : Icons.person_outlined, color: _iconColors[2],), label: 'Profile', ),
          ],
          backgroundColor: Colors.white,
          currentIndex: selectedIndex,
          selectedItemColor: _iconColors[selectedIndex] ,
          onTap: onItemTapped,
        ),
    );
  }
}