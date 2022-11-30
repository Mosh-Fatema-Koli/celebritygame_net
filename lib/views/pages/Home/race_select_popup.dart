import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class RaceSelect extends StatefulWidget {
  const RaceSelect({Key? key}) : super(key: key);

  @override
  State<RaceSelect> createState() => _RaceSelectState();
}

class _RaceSelectState extends State<RaceSelect> {
  TextEditingController _email = TextEditingController();

  String dropdownvalue = 'Sclect Your Hourse';
  String dropdownvalue2 = 'Sclect Entry Fee';
// List of items in our dropdown menu
  var items = [
    'Sclect Your Hourse',
    'Skylue Female',
    'Skylue Male',
    'Blue Female',
    'Blue Male'
  ];
  var items2 = [
    'Sclect Entry Fee',
    'DSL 100.00',
    'DSL 120.00',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Start Race",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.close)),
            ],
          ),
          SizedBox(
            height: 5.0,
            child: new Center(
              child: new Container(
                height: 0.5,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Step 1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          // Initial Value
                          value: dropdownvalue,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconSize: 15,
                          isExpanded: true,
                          iconEnabledColor: Colors.white,
                          focusColor: Colors.white,
                          elevation: 0,
                          dropdownColor: Color.fromARGB(255, 136, 136, 136),
                          borderRadius: BorderRadius.circular(10),
                          style: TextStyle(
                            color: Colors.white,
                          ),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Step 2",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 16,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          // Initial Value
                          value: dropdownvalue2,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconSize: 15,
                          isExpanded: true,
                          iconEnabledColor: Colors.white,

                          focusColor: Colors.white,
                          elevation: 0,
                          dropdownColor: Color.fromARGB(255, 83, 83, 83),
                          borderRadius: BorderRadius.circular(10),
                          style: TextStyle(
                            color: Colors.white,
                          ),

                          // Array list of items
                          items: items2.map((String items2) {
                            return DropdownMenuItem(
                              value: items2,
                              child: Text(items2),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue2 = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Step 3",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                    Get.back();
                    },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.teal,
                    ),
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red,
                    ),
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
