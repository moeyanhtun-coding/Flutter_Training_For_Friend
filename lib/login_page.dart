import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _darwerSideBar(),
      appBar: AppBar(
        title: const Text("Testing"),
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _container(Colors.black, "Black Colors"),
            _margin(0, 10),
            _colorRow(),
            _margin(0, 10),
            _container(Colors.purple, "purple colors"),
            _colorRow(),
            _colorColumn()
          ],
        ),
      ]),
    );
  }

  Widget _colorColumn() {
    return Column(
      children: [
        _container(Colors.blueAccent, "Blue Color"),
        _container(Colors.redAccent, "Red Color"),
        _container(Colors.green, "Green Color"),
      ],
    );
  }

  Widget _colorRow() {
    return Row(
      children: [
        Expanded(child: _container(Colors.grey, "Grey")),
        _margin(10, 0),
        Expanded(child: _container(Colors.green, "Green ")),
        _margin(10, 0),
        Expanded(child: _container(Colors.black, "Black ")),
      ],
    );
  }

  Widget _container(Color boxColor, String colorName) {
    return Container(
      width: double.infinity,
      height: 200,
      color: boxColor,
      child: Center(
        child: Text(
          colorName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }

  Widget _margin(double width, double height) {
    return SizedBox(
      width: width,
      height: height,
    );
  }

  Widget _darwerSideBar() {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _sideBarItem(
                  Icons.home,
                  "Home",
                  () {
                    print("hit");
                  },
                ),
                _sideBarItem(
                  Icons.search,
                  "Search",
                  () {
                    print("hello");
                  },
                ),
                _sideBarItem(
                  Icons.person,
                  "Profile",
                  () {
                    print("hello my world");
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: _sideBarItem(
              Icons.logout,
              "LogOut",
              () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _sideBarItem(IconData icon, String titleName, Function() ontap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(titleName),
      onTap: ontap(),
    );
  }
}
