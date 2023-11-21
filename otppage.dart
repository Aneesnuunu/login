import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/image/a.webp"),
                  radius: 100,
                ),
                Column(
                  children: [
                    Text(
                      "Verification",
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      'Enter your OTP code number',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                        width: 50,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24),
                          maxLength: 1,
                          decoration: InputDecoration(
                            counterText: "",
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                    ),
                      ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
            width: 50,
            child: TextFormField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
              maxLength: 1,
              decoration: InputDecoration(
                counterText: "",
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
        ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
            width: 50,
            child: TextFormField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
              maxLength: 1,
              decoration: InputDecoration(
                counterText: "",
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
        ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 50,
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                maxLength: 1,
                decoration: InputDecoration(
                  counterText: "",
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Verify",
                            style: TextStyle(color: Colors.white)),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.purple)),
                      ),
                    )
                  ],

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Didn't you receive any code ? ",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed:(){}, child:Text('Resend New Code',style: TextStyle(fontSize: 20,color: Colors.purple),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }}
