import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/ui/widgets/submission_alert_dialog.dart';

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
                              if (_mailIdController.text.isEmpty ||
                                  _usernameController.text.isEmpty ||
                                  _messageController.text.isEmpty) {
                                showDialog(
                                    context: context,
                                    builder: ((context) {
                                      return BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 10, sigmaY: 10),
                                        child: AlertDialog(
                                          content: SizedBox(
                                            width: 400,
                                            height: 150,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "All fields are required!",
                                                  style: GoogleFonts.adventPro(
                                                      fontSize: 32),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 70),
                                                  child: TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: const Text("Ok")),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }));
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (dialogueContext) {
                                      return SubmissionAlertDialog(
                                          routeContext: dialogueContext);
                                    });
                              }
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
