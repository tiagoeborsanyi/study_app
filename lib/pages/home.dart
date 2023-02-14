import 'package:flutter/material.dart';
import 'package:task_app_1/data_json/card_json.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: getAppBar(),
      ),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black54,
            ),
          ),
          SizedBox(width: 7),
          Text(
            'Charlie',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          iconSize: 28,
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_outlined,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget getBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 211, 206, 167),
              border: Border.all(color: Colors.black54),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 3,
                  offset: Offset(4, 5),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Your Task Growth',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Your tasks is almost done.',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          Text(
                            '8 tasks completedes',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black45),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black12, width: 10),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                '45%',
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              border: Border(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Tasks',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'see all',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Container(
                height: 36,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 233, 209, 139),
                  border: Border.all(color: Colors.black54),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1,
                      offset: Offset(3, 4),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text('Today'),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 36,
                width: 80,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: const Center(
                  child: Text(
                    'Upcoming',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 36,
                width: 80,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: const Center(
                  child: Text(
                    'Recently',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(cardList.length, (index) {
                  return Container(
                    height: 100,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87, width: 1),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 2,
                          offset: Offset(4, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 20,
                          decoration: BoxDecoration(
                            color: cardList[index]['card_color'],
                            border: const Border(
                              right: BorderSide(color: Colors.black, width: 1),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Center(
                            child: Icon(
                              cardList[index]['icon'],
                              size: 28,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cardList[index]['title'],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              cardList[index]['subtitle'],
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
