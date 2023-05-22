import 'package:chalynyx_todo_app/admin/components/updatetask.dart';
import 'package:chalynyx_todo_app/widgets/components.dart';
import 'package:flutter/material.dart';

class TaskHome extends StatelessWidget {
  const TaskHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF0BA37F),
        onPressed: () {
          Navigator.pushNamed(context, '/admin/home');
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: const Icon(
                  Icons.task,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/admin/task');
                },
              ),
            ),
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
            const TopHome1(),
            const SizedBox(
              height: 15,
            ),
            const H2(text: "Admin Task List"),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
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
              child: const UsersList(),
            ),
          ],
        ),
      ),
    );
  }
}

class UsersList extends StatefulWidget {
  const UsersList({
    super.key,
  });

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              H2(text: "Tasks"),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(2),
            leading: const Icon(Icons.task),
            subtitle: const Text("task body"),
            title: const Text(
              "Sleeping",
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    editTask(context);
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: Color(0xFF0BA37F),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Color(0xFF0BA37F),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(2),
            leading: const Icon(Icons.task),
            title: const Text(
              "Sleeping",
            ),
            subtitle: const Text("task body"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    editTask(context);
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: Color(0xFF0BA37F),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Color(0xFF0BA37F),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(2),
            leading: const Icon(Icons.task),
            title: const Text(
              "Sleeping",
            ),
            subtitle: const Text("task body"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    editTask(context);
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: Color(0xFF0BA37F),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Color(0xFF0BA37F),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> editTask(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const UpdateTask();
      },
    );
  }
}

class TopHome1 extends StatelessWidget {
  const TopHome1({
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
            child: ClipRRect(
              child: TopDesign(
                where: BlendMode.color,
              ),
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
                const H2(text: "Welcome Admin")
              ],
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/admin/home');
              },
              icon: const Icon(Icons.logout),
            ),
          )
        ],
      ),
    );
  }
}
