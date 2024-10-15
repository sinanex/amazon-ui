import 'package:amazon/wigets.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
  width: double.infinity,
  height: 100,
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 10, 135, 184),
        Color.fromARGB(255, 17, 236, 243),
      ],
    ),
  ),
  child: Column(
    children: [
      const SizedBox(
        height: 35,
      ),
      Row(
        children: [
          Image.network(
            'https://www.pngall.com/wp-content/uploads/15/Amazon-Logo-White.png',
            color: Colors.black,
            width: 120,
          ),
          Spacer(), 
          Icon(Icons.notifications,size: 30,),
          SizedBox(width: 15), 
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,20,0),
            child: Icon(Icons.search,size: 30,),
          ),
        ],
      ),
    ],
  ),
)
,
SizedBox(
  height: 30,
),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Hello,",
                    style: TextStyle(
                      fontSize: 25
                    ),),
                    Text(" Sinan",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                    Spacer(),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0,0,15,0),
                     child: Icon(Icons.account_circle,
                     size: 35,color: Colors.grey,),
                   )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    accBtn('Your Order'),
                    accBtn("Buy Again")
                  ],
                  
                ),
                SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   accBtn("Your Account"),
                   accBtn("Your wish list")
                  ],
                 )
              ],
            ),
          )
        ],
      ),

    );
  }
}

