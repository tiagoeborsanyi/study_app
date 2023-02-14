import 'package:flutter/material.dart';
import 'package:task_app_1/data_json/card_json.dart';

class TaskDay extends StatefulWidget {
  const TaskDay({Key? key}) : super(key: key);

  @override
  State<TaskDay> createState() => _TaskDayState();
}

class _TaskDayState extends State<TaskDay> {
  String selectedDay = '19';
  int selectIndexCards = 1;
  int tamanho = cardTaskDay[1]['cards'].length;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Task',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.black,
              size: 28,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_left_sharp,
                  size: 28,
                ),
                Text(
                  'Fev 2023',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                Icon(
                  Icons.arrow_right_sharp,
                  size: 28,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                cardTaskDay.length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDay = cardTaskDay[index]['day'];
                        selectIndexCards = index;
                        tamanho = cardTaskDay[index]['cards'].length;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: selectedDay == cardTaskDay[index]['day']
                            ? const Color.fromARGB(255, 137, 205, 236)
                            : Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 1,
                            offset: Offset(2, 1),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          cardTaskDay[index]['day'],
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  '+ Add Task',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(tamanho, (index) {
                    return Row(
                      children: [
                        Text(
                          cardTaskDay[selectIndexCards]['cards'][index]['hour'],
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
