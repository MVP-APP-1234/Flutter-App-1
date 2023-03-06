import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    Key? key,
    required this.image,
    required this.color,
  }) : super(key: key);
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      height: size.height * 0.3,
      width: size.width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey.withOpacity(0.23),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
            child: Text(
              'CARD HOLDER FULL NAME',
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      '123********8790',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: defaultPadding - 5),
                    Image.asset(image),
                  ],
                ),
                Image.asset(
                  'assets/images/payment_card_image.png',
                  height: size.height * 0.3,
                  width:
                      size.width < 300 ? size.width * 0.3 : size.width * 0.35,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
