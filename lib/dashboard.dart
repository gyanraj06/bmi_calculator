import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  var weightController = TextEditingController();
  var heightController = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "BMI Calculator",
                style: GoogleFonts.montserrat(
                  fontSize: 50,
                  color: Colors.redAccent,
                ),
              ),

              SizedBox(
                height: 50,
              ),
              //*weight
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter Weight: ",
                    style: GoogleFonts.montserrat(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 100,
                    child: TextField(
                      controller: weightController,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "kgs",
                    style: GoogleFonts.montserrat(fontSize: 16),
                  ),
                ],
              ),

              //* height
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter Height: ",
                    style: GoogleFonts.montserrat(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 100,
                    child: TextField(
                      controller: heightController,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "mtr",
                    style: GoogleFonts.montserrat(fontSize: 16),
                  ),
                ],
              ),

              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (weightController.text.toString() != "" &&
                      heightController.text.toString() != "") {
                    var weight = int.parse(weightController.text.toString());
                    var height = int.parse(heightController.text.toString());
                    //calc bmi
                    var bmi = weight / (height * height);
                    result = bmi.toString();
                  } else {
                    result = "Values ssing";
                  }

                  setState(() {});
                },
                child: Text("Calculate"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              Text(
                result,
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
