import 'package:amazon/widget/wigets.dart';
import 'package:flutter/material.dart';

class Cartpage2 extends StatefulWidget {
  const Cartpage2({super.key});

  @override
  State<Cartpage2> createState() => _Cartpage2State();
}

class _Cartpage2State extends State<Cartpage2> {
  int count = 1;
  bool isChecked = false;
  int total = 89900;
  int defaultPR = 89900;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: const Color.fromARGB(255, 137, 217, 235),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 25),
                    SizedBox(width: 5),
                    Text(
                      "Deliver to Sinan - Manjeri 676122",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: Text(
                        "Subtotal ₹$total",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        "Emi Available",
                      ),
                      Text(
                        "  Details",
                        style:
                            TextStyle(color: Color.fromARGB(255, 33, 177, 243)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      Text(
                        " Your Order is eligible for Free Delivary.",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 1, 102, 18)),
                      ),
                      Text(
                        " Select this",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "      option at checkout ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Details",
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.yellow[600],
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text("Proceed to Buy (1 items)",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Text(
                        "Send as a gift. include custom message",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const Divider(),
                  Card(
                    child: SizedBox(
                      width: double.infinity,
                      height: 350,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'assests/images/iphone-removebg-preview.png',
                                    width: 170,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    "Apple iPhone 16 (256GB),     \nUltramarine",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "₹$total                       ",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Eligible for FREE shiping               ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Colour : Deep Blue                       ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Size : 256 GB                                 ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "₹20 Cashback applied . buy with\nitems in cart",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 5, 147, 14)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey[300]!)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      color: Colors.grey[200],
                                      child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              count = 1;
                                              total = defaultPR;
                                            });
                                          },
                                          icon: const Icon(Icons.delete)),
                                    ),
                                    Container(child: Text(count.toString())),
                                    Container(
                                        color: Colors.grey[200],
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                if (count < 4) {
                                                  count++;
                                                  total = count * defaultPR;
                                                }
                                              });
                                            },
                                            icon: const Icon(Icons.add))),
                                  ],
                                ),
                              ),
                              containerBtn(text: 'delete', width: 100),
                              containerBtn(width: 120, text: "text")
                            ],
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: containerBtn(
                                    width: 150, text: "see more like this"),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
