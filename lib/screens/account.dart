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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 72, 199, 241),
                    Color.fromARGB(255, 148, 236, 193)
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
                      const Spacer(),
                      const Icon(
                        Icons.notifications,
                        size: 30,
                      ),
                      const SizedBox(width: 15),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        " Sinan",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        child: Icon(
                          Icons.account_circle,
                          size: 35,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [accBtn(text:'Your Orders',context: context), accBtn(text: "Buy Again")],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      accBtn( text: "Your Account"),
                      accBtn(text:  "Your wish list")
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Orders",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "see all",
                        style: TextStyle(
                          color: Color.fromARGB(255, 33, 215, 243),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        imageCard(
                            'assests/images/keybord-removebg-preview.png', ''),
                        imageCard(
                            'assests/images/iphone-removebg-preview.png', ''),
                        imageCard(
                            'assests/images/headphone-removebg-preview.png',
                            ''),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        "Keep shoping for",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Edit    Browse History",
                        style: TextStyle(color: Color.fromARGB(255, 20, 197, 224), fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      imageCard('assests/images/headphone-removebg-preview.png',
                          'boat rockerz 450'),
                      imageCard(
                          'assests/images/41lHL5XiiDL._AC_UY436_QL65_-removebg-preview.png',
                          'controller'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      imageCard(
                          'assests/images/51+9vY6xT0L._AC_CR0_0_0_0_SX960_SY720_-removebg-preview.png',
                          'laptop stand'),
                      imageCard(
                          'assests/images/51uQxVnOAFL._AC_UF480_480_SR480_480_-removebg-preview.png',
                          'Crystal 4K UHD Smart TV'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
