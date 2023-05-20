import 'package:chalynyx_todo_app/screens/components/addtask.dart';
import 'package:chalynyx_todo_app/screens/components/updatetask.dart';
import 'package:chalynyx_todo_app/widgets/components.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF0BA37F),
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
        child: const Icon(
          Icons.home,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: const Color(0xFF0BA37F),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopHome(),
            const TimeRow(),
            const H2(text: "Task List"),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 35),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.8),
                    spreadRadius: 5,
                    blurRadius: 5,
                    blurStyle: BlurStyle.outer,
                    offset: const Offset(6, 6),
                  ),
                ],
              ),
              child: const ToDoList(),
            ),
          ],
        ),
      ),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({
    super.key,
  });

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const H2(text: "Daily Task"),
              IconButton(
                onPressed: () {
                  addTask1(context);
                },
                icon: const Icon(
                  Icons.add_box_outlined,
                  color: Color(0xFF0BA37F),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            title: const Text(
              "Learn Javascript",
              style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Color(0xFF0BA37F)),
            ),
            leading: Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            subtitle: const Text("This is the body"),
            trailing: IconButton(
              onPressed: () {
                editTaskUser(context);
              },
              icon: const Icon(
                Icons.edit,
                color: Color(0xFF0BA37F),
              ),
            ),
          ),
          ListTile(
            title: const Text("Learn Javascript"),
            leading: Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            subtitle: const Text("This is the body"),
            trailing: IconButton(
              onPressed: () {
                editTaskUser(context);
              },
              icon: const Icon(
                Icons.edit,
                color: Color(0xFF0BA37F),
              ),
            ),
          ),
          ListTile(
            title: const Text("Learn Javascript"),
            leading: Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            subtitle: const Text("This is the body"),
            trailing: IconButton(
              onPressed: () {
                editTaskUser(context);
              },
              icon: const Icon(
                Icons.edit,
                color: Color(0xFF0BA37F),
              ),
            ),
          ),
          ListTile(
            title: const Text("Learn Javascript"),
            leading: Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            subtitle: const Text("This is the body"),
            trailing: IconButton(
              onPressed: () {
                editTaskUser(context);
              },
              icon: const Icon(
                Icons.edit,
                color: Color(0xFF0BA37F),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<dynamic> addTask1(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const AddTaskUser();
      },
    );
  }

  Future<dynamic> editTaskUser(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const UpdateTaskUser();
      },
    );
  }
}

class TimeRow extends StatelessWidget {
  const TimeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TimeBox(
            numberBox: "13",
          ),
          DotDot(),
          TimeBox(
            numberBox: "01",
          ),
          DotDot(),
          TimeBox(
            numberBox: "12",
          )
        ],
      ),
    );
  }
}

class DotDot extends StatelessWidget {
  const DotDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.stop),
          Icon(Icons.stop),
        ],
      ),
    );
  }
}

class TimeBox extends StatelessWidget {
  final String numberBox;
  const TimeBox({
    super.key,
    required this.numberBox,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF0BA37F),
            Color.fromARGB(255, 187, 233, 205),
            Color(0xFF0BA37F),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 80,
      height: 80,
      child: Align(
        child: Text(
          numberBox,
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}

class TopHome extends StatelessWidget {
  const TopHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0BA37F),
      height: 220,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(
            left: 0,
            top: 0,
            child: TopDesign(
              where: BlendMode.color,
            ),
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width / 2) - 50,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/images/profilepics.png"),
                const H2(text: "Welcome Chris")
              ],
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              icon: const Icon(Icons.logout),
            ),
          )
        ],
      ),
    );
  }
}
