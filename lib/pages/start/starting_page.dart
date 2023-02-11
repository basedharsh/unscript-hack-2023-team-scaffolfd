import 'package:flutter/material.dart';
import 'package:foodonline/pages/components/colour_constants.dart';

import '../login/login_page_buyer.dart';
import '../login/login_page_seller.dart';
import '../route/routing_page.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/makescreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        //color: kwhite,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              height: 50,
              onPressed: () {
                RoutingPage.goToNext(
                    context: context, navigateTo: LoginPageBuyer());
              },
              color: Color.fromARGB(255, 4, 105, 113),
              child: Text(
                'Consumer',
                style: TextStyle(
                    color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              height: 50,
              onPressed: () {
                RoutingPage.goToNext(
                    context: context, navigateTo: LoginPageSeller());
              },
              color: Color.fromARGB(255, 4, 105, 113),
              child: Text(
                'Provider',
                style: TextStyle(
                    color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        )),
      ),
    );
  }
}
