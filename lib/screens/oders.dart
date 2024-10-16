import 'package:amazon/wigets.dart';
import 'package:flutter/material.dart';

class OdersPage extends StatelessWidget {
  const OdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        flexibleSpace: Container(
          width: double.infinity,
          height: 152,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 72, 199, 241),
                Color.fromARGB(255, 148, 236, 193),
              ],
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 65),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 375,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, size: 26),
                        suffixIcon: Icon(Icons.center_focus_weak),
                        hintText: 'Search Amazon.in',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your Orders",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textRow('Your Orders'),
                    Divider(),
                    textRow('Subscribe & save')
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                width: double.infinity,
                height: 120,
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Account Settings ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                width: double.infinity,
                height: 482,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                  color: Colors.grey,
                  
                )),
                child: Column(
                  children: [
                    textRow("Login & security"),
                    Divider(),
                    textRow("Your Account"),
                    Divider(),
          
                  textRow("Login with amazon"),
                  Divider(),
                  textRow("Content and devices"),
                  Divider(),
                  textRow("Manage Your Profiles"),
                  Divider(),
                  textRow("Default Purchase Settings"),
                  Divider(),
                  textRow("Manage Prime membership"),
                  Divider(),
                  textRow("Membership & Subscription"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
