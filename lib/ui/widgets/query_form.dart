import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QueryFormWidget extends StatelessWidget {
  final int width;

  QueryFormWidget({this.width = 800, super.key});

  final _mailIdController = TextEditingController();
  final _usernameController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Column(
        children: [
          Text(
            "Customer Support",
            style: GoogleFonts.adventPro(fontSize: 64),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(64.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 512,
                        child: TextField(
                          decoration: const InputDecoration(
                              label: Text("Your Name"),
                              border: OutlineInputBorder()),
                          controller: _usernameController,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 512,
                        child: TextField(
                          decoration: const InputDecoration(
                              label: Text("Your E-Mail"),
                              border: OutlineInputBorder()),
                          controller: _mailIdController,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 512,
                        child: TextField(
                          decoration: const InputDecoration(
                              label: Text("Feedback"),
                              border: OutlineInputBorder()),
                          controller: _messageController,
                        ),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      const SizedBox(
                        width: 450,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: SizedBox(
                          width: 100,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (dialogueContext) {
                                    return AlertDialog(
                                        content: SizedBox(
                                      height: 150,
                                      width: 400,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Your feedback has been sent",
                                            style: GoogleFonts.adventPro(
                                                fontSize: 32),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 70.0),
                                              child: TextButton(
                                                onPressed: () {
                                                  Navigator.pop(
                                                      dialogueContext);
                                                  Navigator.pop(context);
                                                },
                                                child: const Text("Return"),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ));
                                  });
                            },
                            child: Text(
                              "Submit",
                              style: GoogleFonts.adventPro(fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ])
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.support_agent,
                  size: 300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
