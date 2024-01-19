import "package:flutter/material.dart";
import 'package:myparcel/ui/views/my_parcel/my_parcel_page.dart';
import "package:myparcel/ui/views/parcel_center/parcel_center_screen.dart";
import "package:myparcel/ui/views/send_parcel/send_parcel_screen.dart";
import "package:myparcel/ui/widgets/custom_navigation_bar.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> screens = [
    ParcelPage(),
    SendParcelScreen(),
    ParcelCenterScreen()
  ];
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onItemTappped: _onItemTapped,
      ),
      floatingActionButton: SizedBox(
        height: 48,
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          onPressed: () {},
          child: const Icon(
            Icons.chat_bubble,
            size: 22,
          ),
        ),
      ),
    );
  }
}
