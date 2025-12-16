import 'package:easypasia_clone/view/home_view/home_view.dart';
import 'package:flutter/material.dart';

class BottomNavView extends StatefulWidget {
  BottomNavView({super.key});

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int _selectedIndex = 0;

  final List allViews = [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];

  void onItemTaped(int value) {
    setState(() {});
    _selectedIndex = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allViews[_selectedIndex],
      floatingActionButton: Container(
        width: 38,
        height: 38,
        margin: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 2
            )
          ]
        ),
        child: FloatingActionButton(
          backgroundColor: Color(0xFF53ba65),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8)
          ),
          onPressed: () {},child: Icon(Icons.qr_code_scanner,size: 28 ,color: Colors.white,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        //   fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
          elevation: 10,
          selectedItemColor: Colors.green,
          unselectedLabelStyle: TextStyle(fontSize: 10),
          selectedLabelStyle: TextStyle(fontSize: 10),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          items: [
            BottomNavigationBarItem(icon: Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined,size: 30,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(_selectedIndex == 1 ? Icons.location_on : Icons.location_on_outlined,size: 30),label: "Cash Points"),
            BottomNavigationBarItem(icon: Icon(Icons.qr_code_2_sharp,size: 30),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.campaign_outlined,size: 30),label: "Promotions"),
            BottomNavigationBarItem(icon: Icon(_selectedIndex == 4 ? Icons.person : Icons.perm_identity_rounded,size: 30),label: "My Account"),
          ],
        currentIndex: _selectedIndex,
        onTap: onItemTaped,
      ),
    );
  }
}
