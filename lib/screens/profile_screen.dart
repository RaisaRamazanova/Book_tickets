import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/img_1.png'
                    )
                  )
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets', style: Styles.headLineStyle1,),
                  Gap(AppLayout.getHeight(2)),
                  Text('New-York', style: TextStyle(
                    fontSize: AppLayout.getHeight(14),
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500
                  ),),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(3), vertical: AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3)
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                              color: Color(0xFF526799)
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text('Premium status', style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600
                        ),),
                        Gap(AppLayout.getHeight(5)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('You are tapped');
                    },
                      child: Text(
                        'Edit',
                        style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300,),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                ),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: const Color(0xFF264CD2))
                ),
              )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(25), vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: AppLayout.getWidth(25),
                      backgroundColor: Colors.white,
                      child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: AppLayout.getWidth(25),),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'v got a new award",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: AppLayout.getWidth(16),
                              color: Colors.white.withOpacity(0.9)
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text('Accumulated miles', style: Styles.headLineStyle2,),
          Column(
            children: [
              Gap(AppLayout.getHeight(15)),
              Text(
                '193828',
                style: TextStyle(
                  fontSize: 45,
                  color: Styles.textColor,
                  fontWeight: FontWeight.w600
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Miles accrued', style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                  Text('23 May 2023', style: Styles.headLineStyle4.copyWith(fontSize: 16),)

                ],
              ),
              Gap(AppLayout.getHeight(20)),
              const Row(
                children: [
                  AppColumnLayout(firstText: '23 332', secondText: 'Miles', alignment: CrossAxisAlignment.start),
                  AppColumnLayout(firstText: 'Airline CO', secondText: 'Received from', alignment: CrossAxisAlignment.end)
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              const Row(
                children: [
                  AppColumnLayout(firstText: '34', secondText: 'Miles', alignment: CrossAxisAlignment.start),
                  AppColumnLayout(firstText: "McDonal's", secondText: 'Received from', alignment: CrossAxisAlignment.end)
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              const Row(
                children: [
                  AppColumnLayout(firstText: '45 332', secondText: 'Miles', alignment: CrossAxisAlignment.start),
                  AppColumnLayout(firstText: 'Exume', secondText: 'Received from', alignment: CrossAxisAlignment.end)
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Center(
            child: Text('Accumulated miles', style: Styles.headLineStyle2.copyWith(color: Styles.primaryColor),),
          )
        ],
      ),
    );
  }
}
