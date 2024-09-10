import 'package:flutter/material.dart';
import 'package:task4/screens.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedPage=0;
  late List<Widget>_page;
  late List<BottomNavigationBarItem>_tabs;
  @override
  void  didChangeDependencies(){
    super.didChangeDependencies();
    _page=[
      ScreenHome(
        firstButtonNavigation: screenCart,
        secondButtonNavigation: screenFavorite,
        thirdButtonNavigation: screenHistory,
      ),
      ScreenCart(
        firstButtonNavigation: screenHome,
        secondButtonNavigation: screenFavorite,
        thirdButtonNavigation: screenHistory,

      ),
      ScreenFavorite(
        firstButtonNavigation: screenHome,
        secondButtonNavigation: screenCart,
        thirdButtonNavigation: screenHistory,

      ),
      ScreenHistory(
        firstButtonNavigation: screenHome,
        secondButtonNavigation: screenCart,
        thirdButtonNavigation: screenFavorite,
      ),
    ];
    _tabs= const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_sharp),label:"Cart"),
      BottomNavigationBarItem(icon: Icon(Icons.favorite),label:"Love"),
      BottomNavigationBarItem(icon: Icon(Icons.access_time_filled),label:'History'),
    ];
  }
  Widget build(BuildContext context) {
      return Scaffold(
        body: _page[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white, // Set background color to white
          selectedItemColor: Colors.deepOrange, // Change to your preferred color
          unselectedItemColor: Colors.grey, // Change to your preferred color
          showSelectedLabels: true,
          showUnselectedLabels: false,
          currentIndex: selectedPage,
          items: _tabs,
          onTap: (newIndex) => myselectedPage(newIndex),
        ),
      );
  }
  void screenHome() {
    myselectedPage(0);
  }

  void screenCart() {
    myselectedPage(1);
  }

  void screenFavorite() {
    myselectedPage(2);
  }

  void screenHistory() {
    myselectedPage(3);
  }

  void myselectedPage(newIndex) {
    setState(() {
      selectedPage = newIndex;
    });
  }
}


