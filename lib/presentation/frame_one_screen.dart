import 'package:flutter/material.dart';
// Import necessary libraries and dependencies

class FrameOneScreen extends StatelessWidget {
  const FrameOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                  height: 45), // Assuming 'v' is a unit or conversion method
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 601, // Assuming 'v' is a unit or conversion method
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 84,
                              vertical: 61,
                            ),
                            // Assuming AppDecoration is defined
                            decoration:
                                BoxDecoration(), // Add your decoration here
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 149),
                                ElevatedButton(
                                  // Assuming CustomElevatedButton is replaced with ElevatedButton
                                  onPressed: () {},
                                  child: Text("Log in"),
                                ),
                                SizedBox(height: 15),
                                OutlinedButton(
                                  // Assuming CustomOutlinedButton is replaced with OutlinedButton
                                  onPressed: () {
                                    onTapSignUp(context);
                                  },
                                  child: Text("Sign Up"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height:
                                540, // Assuming 'v' is a unit or conversion method
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 4),
                                    // Assuming AppDecoration is defined
                                    decoration:
                                        BoxDecoration(), // Add your decoration here
                                    child: Text(
                                      "Welcome",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapLogIn(BuildContext context) {
    Navigator.pushNamed(
        context, "/frameSevenScreen"); // Replace with correct route
  }

  void onTapSignUp(BuildContext context) {
    Navigator.pushNamed(
        context, "/frameSevenScreen"); // Replace with correct route
  }
}
