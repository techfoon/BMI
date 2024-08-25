import 'package:flutter/material.dart';
import 'package:mytesting/result.dart';

class BmiDashBord extends StatefulWidget {
  @override
  State<BmiDashBord> createState() => _BmiDashBordState();
}

class _BmiDashBordState extends State<BmiDashBord> {
  int? choice;

  final TextEditingController weightContorller = TextEditingController();

  final TextEditingController ageContorller = TextEditingController();

  final TextEditingController heightContorller = TextEditingController();

  //  BmiDashBord({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(),
                child: Center(
                  child: Image.asset(
                    'assets/heart.png',
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Healthy",
                style: TextStyle(
                  fontFamily: 'Exo',
                  fontSize: 50,
                  color: Color.fromARGB(255, 39, 233, 25),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      child: Text("Male", style: TextStyle(fontSize: 20)),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          choice = 1;
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                           elevation: 5,
                          shape: CircleBorder(),
                          backgroundColor: choice == 1
                              ? Color.fromARGB(255, 65, 159, 235)
                              : Colors.grey,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/male.png',
                            fit: BoxFit.cover,
                          ),
                        ))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Text("FeMale", style: TextStyle(fontSize: 20)),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          choice = 0;

                          setState(() {
                            
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          shape: CircleBorder(),
                          backgroundColor: choice == 0
                              ? Color.fromARGB(255, 244, 85, 180)
                              : Colors.grey,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/female.png',
                            fit: BoxFit.cover,
                          ),
                        ))
                  ],
                ),
              ],
            ),
            /* new section---------------------*/
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Center(
                      child: Container(
                        child: Text("Age", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ))),
                        child: Container(
                          width: 70,
                          margin: EdgeInsets.only(
                              left: 20, right: 20, bottom: 5, top: 5),
                          child: TextField(
                            controller: ageContorller,
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontSize: 45.0, // Set the desired font size
                            ),
                            decoration: InputDecoration(
                              hintText: "Age",
                              border: OutlineInputBorder(),
                            ),
            
                            /*Text(
                            "75",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                          ),*/
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: Container(
                        child: Text("Height", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ))),
                        child: Container(
                          width: 70,
                          margin: EdgeInsets.only(
                              left: 20, right: 20, bottom: 5, top: 5),
                          child: TextField(
                            controller: heightContorller,
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontSize: 45.0, // Set the desired font size
                            ),
                            decoration: InputDecoration(
                              hintText: "height",
                              border: OutlineInputBorder(),
                            ),
            
                            /*Text(
                            "75",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                          ),*/
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  
                  children: [
                    Center(
                      child: Container(
                        child: Text("Weight", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                    Center(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(),
                      child: Container(
                        width: 70,
                        margin: EdgeInsets.only(
                            left: 20, right: 20, bottom: 5, top: 5),
                        child: TextField(
                          controller: weightContorller,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            fontSize: 45.0, // Set the desired font size
                          ),
                          decoration: InputDecoration(
                            hintText: "66",
                            border: OutlineInputBorder(),
                          ),
            
                          /*Text(
                            "75",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                          ),*/
                        ),
                      ),
                    ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 39, 233, 25),
        child: Center(
          child: InkWell(
            child: Container(
              decoration: BoxDecoration(),
              child: Text(
                "Calculate BMI",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            onTap: () {
              if (ageContorller.text.isNotEmpty &&
                  weightContorller.text.isNotEmpty &&
                  heightContorller.text.isNotEmpty && (choice!=null)) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Result(
                    bmiAge: ageContorller.text.toString(),
                    bmiHeight: heightContorller.text.toString(),
                    bmiWeight: weightContorller.text.toString(),
                    gChoice: choice!,
                  );
                }));
              } else {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Alert'),
                    content: const Text('Please fill the all input types and Genders'),
                    actions: <Widget>[
                      /* TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),*/
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
