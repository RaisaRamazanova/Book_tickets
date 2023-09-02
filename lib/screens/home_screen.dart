import 'package:book_tickets/screens/hotel_view.dart';
import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(right: AppLayout.getWidth(20), left: AppLayout.getWidth(20), top: AppLayout.getHeight(40)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headLineStyle3,),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                            'Book Ticket',
                        style: Styles.headLineStyle1,)
                      ],
                    ),
                    SizedBox(width: AppLayout.getWidth(30)),
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                            image: const DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(
                                    'assets/images/img_1.png'
                                )
                            ),
                          ),
                        ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(12)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                    color: const Color(0xFFF4F6FD)
                  ),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                const AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all')
              ],
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
            child: Row(
              children: ticketList.map((ticket) => TicketView(ticket: ticket,)).toList(),
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: const AppDoubleText(bigText: 'Hotels', smallText: 'View all')
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: AppLayout.getWidth(10), left: AppLayout.getWidth(20)),
            child: Row(
              children: hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList(),
            ),
          )
        ],
      )
    );
  }
}
