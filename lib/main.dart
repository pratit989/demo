import 'dart:ui';

import 'package:demo/hotel_hostel_room/hotel_hostel_room.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:demo/home_page/home_page_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_code/custom_theme.dart';
import 'home_page/home_page_widget.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(brightness: Brightness.light),
      home: NavBarPage(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'HomePage';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'HomePage': HomePageWidget(),
      'HomePageCopy': HomePageCopyWidget(),
      'HomePageCopyCopy2': Scaffold(),
      'HomePageCopyCopy': Scaffold(),
      'HomePageCopyCopyCopy': Scaffold(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      extendBody: true,
      body: tabs[_currentPage],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () => setState(() => _currentPage = tabs.keys.toList()[2]),
        child: CircleAvatar(
          child: Image.asset("assets/images/centerIcon.png"),
          radius: 25,
          backgroundColor: Colors.black,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(19)),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 16,
            sigmaY: 16
          ),
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            color: Color.fromARGB(26, 95, 100, 121),
            elevation: 0,
            notchMargin: 8,
            child: BottomNavigationBar(
              elevation: 0,
              currentIndex: currentIndex,
              onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
              backgroundColor: Color(0x00000000),
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.black,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              unselectedFontSize: 11,
              selectedFontSize: 11,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/home-2.png"),
                    size: 24,
                  ),
                  label: 'Home',
                  tooltip: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/search-normal.png"),
                    size: 24,
                  ),
                  label: 'Search',
                  tooltip: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    height: kToolbarHeight-8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            child: Text("More", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                  ),
                  label: ' ',
                  tooltip: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/star.png"),
                    size: 24,
                  ),
                  label: 'Favourite',
                  tooltip: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/profile-circle.png"),
                    size: 24,
                  ),
                  label: 'Profile',
                  tooltip: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
