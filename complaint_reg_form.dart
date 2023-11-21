import 'package:flutter/material.dart';

class comp_reg extends StatefulWidget {
  const comp_reg({super.key});

  @override
  State<comp_reg> createState() => _comp_regState();
}

class _comp_regState extends State<comp_reg> {
  bool ToF = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  label: Text("Name"),
                  hintText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    label: Text("Email/Username"),
                    hintText: "Email/Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextField(
                  obscureText: ToF,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_android),
                    suffixIcon: IconButton(
                        onPressed: () {
                          ToF = !ToF;
                          setState(() {});
                        },
                        icon: Icon(Icons.remove_red_eye_rounded)),
                    label: Text("PhoneNumber"),
                    hintText: "PhoneNumber",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: TextField(
                  minLines: 4,
                  maxLines: 15,
                  decoration: InputDecoration(
                    label: Text("Complaint"),
                    hintText: "Complaint",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Submit", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade400),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
