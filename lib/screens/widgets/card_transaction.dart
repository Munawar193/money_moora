import 'package:flutter/material.dart';
import 'package:money_moora/constants/thame.dart';

class CardTransaction extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final double price;
  final String symbol;
  final bool labelPrice;

  const CardTransaction({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    this.symbol = '-',
    this.labelPrice = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 18, 25, 18),
      margin: const EdgeInsets.only(bottom: 10),
      height: 75,
      decoration: BoxDecoration(
        color: kwhiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: boldStyle.copyWith(
                  fontSize: 16,
                  color: kblackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                subtitle,
                style: greykStyle.copyWith(),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                symbol,
                style: labelPrice == false
                    ? bluekStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      )
                    : pinkkStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
              ),
              Text(
                price.toString(),
                style: labelPrice == false
                    ? bluekStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      )
                    : pinkkStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
