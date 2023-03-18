import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/controller.dart';

class TravelDetailPage extends NyStatefulWidget {
  final Controller controller = Controller();
  TravelDetailPage({Key? key}) : super(key: key);

  @override
  _TravelDetailPageState createState() => _TravelDetailPageState();
}

class _TravelDetailPageState extends NyState<TravelDetailPage> {
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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("public/assets/images/lake.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Text("Mar menor",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: InkWell(
                      onTap: () {
                        // Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  width: double.infinity,
                  //margin: EdgeInsets.only(top: 20, left: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mar Menor Lake",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        Text("Iberian Peninsula, Spain",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(children: [
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          Text("4.5",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18)),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Rating",
                              style: TextStyle(color: Colors.grey, fontSize: 18)),
                        ]),
                        SizedBox(
                          height: 20,
                        ),
                        Text("About this place",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed dapibus diam. Pellentesque orci massa, interdum id aliquet ac, sollicitudin eu lectus. Pellentesque vitae massa a augue facilisis congue. Pellentesque rhoncus sed ipsum ac hendrerit. Aenean semper commodo augue, id tempus sem auctor laoreet. Nunc a lacus velit. Aenean sagittis nulla at varius convallis. Vestibulum non felis nisl. Nulla facilisi. Nunc porttitor iaculis dapibus. Nullam fermentum diam ut mi maximus tincidunt. Praesent id ipsum euismod, faucibus nunc sed, convallis lacus. Fusce laoreet posuere turpis vitae porta. Donec sed metus vehicula, facilisis ex et, finibus libero. ",
                            style: TextStyle(fontSize: 14)),
                        SizedBox(
                          height: 20,
                        ),
                        //book button
                        InkWell(
                          onTap: () {
                            // Navigator.pop(context);
                          },
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.orange[700],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
