import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:book_tickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/layout_builder_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text('Tickets', style: Styles.headLineStyle1,),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              const SizedBox(height: 1,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    Gap(AppLayout.getHeight(25)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: 'Flutter DB', secondText: "Passenger", alignment: CrossAxisAlignment.start,),
                        AppColumnLayout(firstText: '0738 373774', secondText: "Passport", alignment: CrossAxisAlignment.end,),
                      ],
                    ),
                    Gap(AppLayout.getHeight(25)),
                    const AppLayoutBuilderWidget(isColor: true, sections: 12, width: 7,),
                    Gap(AppLayout.getHeight(25)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: '0644 445 33556', secondText: "Number of E-ticket", alignment: CrossAxisAlignment.start,),
                        AppColumnLayout(firstText: 'B2SG28', secondText: "Booking code", alignment: CrossAxisAlignment.end,)
                      ],
                    ),
                    Gap(AppLayout.getHeight(25)),
                    const AppLayoutBuilderWidget(isColor: true, sections: 12, width: 7),
                    Gap(AppLayout.getHeight(25)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/visa.png', scale: AppLayout.getHeight(9),),
                                Text(' *** 2462', style: Styles.headLineStyle3,)
                              ],
                            ),
                            Gap(AppLayout.getHeight(9)),
                            Text('Payment method', style: Styles.headLineStyle4)
                          ],
                        ),
                        AppColumnLayout(firstText: '\$249,99', secondText: "Price", alignment: CrossAxisAlignment.end,)

                      ],
                    ),

                    Gap(AppLayout.getHeight(25)),
                  ],
                ),

              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getWidth(21)),
                    bottomLeft: Radius.circular(AppLayout.getWidth(21))
                  ),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(left: AppLayout.getWidth(15), right: AppLayout.getWidth(15), top: AppLayout.getWidth(1)),
                padding: EdgeInsets.only(top: AppLayout.getWidth(20), bottom: AppLayout.getWidth(20)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: AppLayout.getHeight(70),
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0]),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ]
      ),
    );
  }
}
