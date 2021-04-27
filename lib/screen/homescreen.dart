import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homescreen/widget/PicksCaurosel.dart';
import 'package:homescreen/widget/postCaurosel.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int _Selectedindex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.music,
    FontAwesomeIcons.mandalorian,
    FontAwesomeIcons.atom,
    FontAwesomeIcons.blog,
  ];
  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _Selectedindex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _Selectedindex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _Selectedindex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 120),
              child: Text(
                'What are you searching for?',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 20.0,
            ),
            PicksCaurosel(),
            SizedBox(
              height: 20.0,
            ),
            PostCaurosel()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value){
          setState(() {
            _currentTab = value;

          });
        },
        items: [
          BottomNavigationBarItem(
            title: SizedBox.shrink(),
            icon: Icon(Icons.search,size: 30,),
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.book,size: 25,),
              title: SizedBox.shrink(),
      ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('https://i.pinimg.com/564x/67/d0/a0/67d0a0227fb0205a616690633d2cd52e.jpg'),

            ),
            title: SizedBox.shrink(),

          ),
        ],
      ),
    );
  }
}
