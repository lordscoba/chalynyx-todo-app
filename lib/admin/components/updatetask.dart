import 'package:flutter/material.dart';

class UpdateTask extends StatefulWidget {
  const UpdateTask({super.key});

  @override
  State<UpdateTask> createState() => _UpdateTaskState();
}

class _UpdateTaskState extends State<UpdateTask> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width < 500 ? 380 : 550,
                child: TextFormField(
                  style: const TextStyle(color: Colors.black54),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter New Title',
                    hintStyle: const TextStyle(
                      color: Colors.black54,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFFFFFFF),
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black38,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  validator: (value) {
                    return null;
                  },
                  onSaved: (value) {},
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width < 500 ? 380 : 550,
                child: TextFormField(
                  style: const TextStyle(color: Colors.black54),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter New task',
                    hintStyle: const TextStyle(
                      color: Colors.black54,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFFFFFFF),
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black38,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  validator: (value) {
                    return null;
                  },
                  onSaved: (value) {},
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0BA37F),
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal:
                          MediaQuery.of(context).size.width < 580 ? 80 : 250,
                    ),
                    shadowColor: Colors.grey[800],
                    elevation: 6),
                child: const Text("Update Task"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
