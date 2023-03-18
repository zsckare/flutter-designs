import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/controller.dart';

class TravelWelcomePage extends NyStatefulWidget {
  final Controller controller = Controller();
  TravelWelcomePage({Key? key}) : super(key: key);

  @override
  _TravelWelcomePageState createState() => _TravelWelcomePageState();
}

class _TravelWelcomePageState extends NyState<TravelWelcomePage> {
  @override
  init() async {
    super.init();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("public/assets/images/travel_bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(children: [
            // back button
            Container(
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // app content

            //Welcome text

            Container(
              margin: EdgeInsets.only(top: 100),
              child: Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              child: Text(
                "Unique trips, discover new places",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),

            // login google button

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              child: InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, "/travel-login");
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google button

                      Icon(
                        Icons.login,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Login with Google",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )),
            ),

            // facebook button
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              child: InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, "/travel-login");
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google button

                      Icon(
                        Icons.login,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Login with Facebook",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )),
            ),

            // sign in button
            Spacer(),
            Column(
              children: [
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange[800],
              ),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/travel-login");
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google button

                      Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
            Container(
               
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/travel-home");
                   
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google button

                      Text(
                        "Skip",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
              ],
            ), 
          ]),
        ),
      ),
    );
  }
}
