import 'package:flutter/material.dart';
import 'package:money_moora/constants/thame.dart';
import 'package:money_moora/screens/pages/home_page.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimeColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/get-started.png',
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Money ',
                        style: boldStyle.copyWith(
                          fontSize: 35,
                          color: kwhiteColor,
                        ),
                      ),
                      Text(
                        'Moora',
                        style: boldStyle.copyWith(
                          fontSize: 35,
                          color: kpinkColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'A brand new experience\nof managing your business',
                    style: whiteStyle.copyWith(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: kpinkColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    'Get Started Now!',
                    style: boldStyle.copyWith(
                      color: kwhiteColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
