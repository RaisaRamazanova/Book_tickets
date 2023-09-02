import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(17)),
      margin: EdgeInsets.only(right: AppLayout.getWidth(17), top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1
          )
        ]
      ),
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/${hotel['image']}'
                )
              )
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
              hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(8)),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headLineStyle1.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
