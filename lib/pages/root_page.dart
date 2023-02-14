import 'package:flutter/material.dart';

import 'home.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: getTabs(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 224, 187, 53),
        child: const Icon(
          Icons.add,
          color: Colors.black54,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: getBody(),
    );
  }

  Widget getTabs() {
    List iconsItems = [
      {'icon': Icons.home_outlined, 'text': 'home'},
      {'icon': Icons.calendar_today, 'text': 'calendar'},
      {'icon': Icons.chat_outlined, 'text': 'chat'},
      {'icon': Icons.person_outline, 'text': 'perfil'},
    ];

    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black54, width: 2),
        ),
      ),
      child: BottomNavigationBar(
        elevation: 0,
        currentIndex: pageIndex,
        onTap: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
        selectedItemColor: const Color.fromARGB(255, 146, 117, 10),
        unselectedItemColor: Colors.grey,
        items: List.generate(iconsItems.length, (index) {
          return BottomNavigationBarItem(
            icon: Icon(
              iconsItems[index]['icon'],
              size: 30,
            ),
            label: iconsItems[index]['text'],
          );
        }),
      ),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [
        Home(),
        Center(
          child: Text(
            "CALENDAR",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Text(
            "CHAT",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Text(
            "PROFILE",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
