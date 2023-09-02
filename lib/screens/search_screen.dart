import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/widgets/icon_text_widget.dart';
import 'package:book_tickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('What are \nyou looking for?', style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35))),
          Gap(AppLayout.getHeight(20)),
          const AppTicketTabs(firstTab: 'Airline Tickets', secondTab: 'Hotels',),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(18), horizontal: AppLayout.getWidth(12)),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getWidth(5)),
            color: const Color(0xD91130CE),
            ),
            child: Center(
                child: Text(
                  'Find tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white)))
          ),
          Gap(AppLayout.getHeight(25)),
          const AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(AppLayout.getHeight(15)),
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/img_5.png'
                          )
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text("20% discount on the early booking of this flight. Don't miss out this chance",
                    style: Styles.headLineStyle2.copyWith(color: Colors.grey)),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                        height: AppLayout.getHeight(174),
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: const Color(0xFF3AB8B8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 1,
                                  spreadRadius: 1
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey",
                                style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold, fontSize: AppLayout.getHeight(25))),
                            Gap(AppLayout.getHeight(12)),
                            Text("Take the survey about our services and get discount",
                                style: Styles.headLineStyle3.copyWith(color: Colors.white, fontWeight: FontWeight.w500, fontSize: AppLayout.getHeight(18))),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent
                        ),
                      ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(15)),
                    height: AppLayout.getHeight(210),
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                        color: Color(0xFFEC6545),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 1,
                              spreadRadius: 1
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Take love",
                            style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold, fontSize: AppLayout.getHeight(25)),
                            textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(12)),
                        RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '😘',
                                  style: TextStyle(fontSize: AppLayout.getHeight(36))
                                ),
                                TextSpan(
                                    text: '😍',
                                    style: TextStyle(fontSize: AppLayout.getHeight(45))
                                ),
                                TextSpan(
                                    text: '🥰',
                                    style: TextStyle(fontSize: AppLayout.getHeight(36))
                                ),
                              ]
                            )
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
