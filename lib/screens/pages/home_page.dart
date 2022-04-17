import 'package:flutter/material.dart';
import 'package:money_moora/constants/thame.dart';
import 'package:money_moora/screens/pages/navigation_draw.dart';
import 'package:money_moora/screens/widgets/card_operation.dart';
import 'package:money_moora/screens/widgets/card_transaction.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 5,
          left: 10,
          right: 35,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Builder(
              builder: (context) {
                return InkWell(
                  borderRadius: BorderRadius.circular(10),
                  splashColor: kgreyColor,
                  highlightColor: kgreyColor,
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/more.png'),
                      ),
                    ),
                  ),
                );
              },
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: AssetImage('assets/images/profile.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget nameSection() {
      return Container(
        margin: const EdgeInsets.only(top: 10, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Evening',
              style: blackStyle.copyWith(fontSize: 18),
            ),
            Text(
              'Munawar Khalil',
              style: boldStyle.copyWith(
                fontSize: 28,
                color: kblackColor,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      );
    }

    Widget card() {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(
          top: 10,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(29, 25, 21, 25),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/card.png'),
            ),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CARD NUMBER',
                              style: whiteStyle.copyWith(),
                            ),
                            Text(
                              '**** **** **** 1425',
                              style: boldStyle.copyWith(
                                fontSize: 20,
                                color: kwhiteColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/pay-icon.png',
                        width: 45,
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CARD HOLDERNAME',
                            style: whiteStyle.copyWith(),
                          ),
                          Text(
                            'Munawar',
                            style: boldStyle.copyWith(
                              fontSize: 24,
                              color: kwhiteColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'EXPIRY DATE',
                            style: whiteStyle.copyWith(),
                          ),
                          Text(
                            '03-01-2023',
                            style: whiteStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget operation() {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(top: 5),
        padding: const EdgeInsets.only(left: 20, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Operation',
              style: extraBoldStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                    color: kprimeColor,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: kprimeColor.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: kprimeColor.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget operationCard() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: const EdgeInsets.only(top: 10, left: 20),
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: const [
              CardOperation(
                imageUrl: 'assets/images/money-transfer.png',
                text: 'Money Transfer',
                cardColor: kprimeColor,
                textColor: kwhiteColor,
                iconSize: 65,
              ),
              CardOperation(
                imageUrl: 'assets/images/insights-tracking.png',
                text: 'Insights Tracking',
                cardColor: kwhiteColor,
                textColor: kprimeColor,
              ),
              CardOperation(
                imageUrl: 'assets/images/bank-withdraw.png',
                text: 'Bank Withdraw',
                cardColor: kwhiteColor,
                textColor: kprimeColor,
                iconSize: 50,
              ),
            ],
          ),
        ),
      );
    }

    Widget transactionHistories() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 22, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction Histories',
              style: extraBoldStyle.copyWith(
                fontSize: 18,
              ),
            ),
            const SizedBox()
          ],
        ),
      );
    }

    Widget cardtransaction() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(top: 15),
        child: Column(
          children: const [
            CardTransaction(
              imageUrl: 'assets/images/uber.png',
              title: 'Uber Ride',
              subtitle: '1st Apr 2020',
              price: 35.21,
              symbol: r'-$',
            ),
            CardTransaction(
              imageUrl: 'assets/images/nike.png',
              title: 'Nike Outlet',
              subtitle: '30th Mar 2020',
              price: 35.21,
              symbol: r'-$',
            ),
            CardTransaction(
              imageUrl: 'assets/images/peyment-receive.png',
              title: 'Peyment Receive',
              subtitle: '15th Mar 2020',
              price: 250.36,
              symbol: r'+$',
              labelPrice: true,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      drawer: const NavigationDrew(),
      backgroundColor: kbackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: header(),
            ),
            Flexible(
              flex: 10,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nameSection(),
                    card(),
                    operation(),
                    operationCard(),
                    transactionHistories(),
                    cardtransaction(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
