import 'package:chalynyx_todo_app/admin/components/adduser.dart';
import 'package:chalynyx_todo_app/admin/components/updateuser.dart';
import 'package:chalynyx_todo_app/widgets/components.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});
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
            const H2(text: "Users List"),
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
      height: 200,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const H2(text: "Users"),
              IconButton(
                onPressed: () {
                  addUser(context);
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
            contentPadding: const EdgeInsets.all(2),
            leading: const Icon(Icons.account_circle),
            title: const Text(
              "Nwokoye Chris",
            ),
            subtitle: const Text("smart@gmail.com,smart"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    editUser(context);
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
            leading: const Icon(Icons.account_circle),
            title: const Text(
              "Nwokoye Chris",
            ),
            subtitle: const Text("smart@gmail.com,smart"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    editUser(context);
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
            leading: const Icon(Icons.account_circle),
            title: const Text(
              "Nwokoye Chris",
            ),
            subtitle: const Text("smart@gmail.com,smart"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    editUser(context);
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

  Future<dynamic> addUser(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const AddUser();
      },
    );
  }

  Future<dynamic> editUser(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const UpdateUser();
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
            left: (MediaQuery.of(context).size.width / 2) - 60,
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
                Navigator.pushNamed(context, '/admin/task');
              },
              icon: const Icon(Icons.logout),
            ),
          ),
          Positioned(
              top: 48,
              right: 15,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text("out"),
              ))
        ],
      ),
    );
  }
}
