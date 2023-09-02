import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/get_utils.dart';
import '../utils/app_layout.dart';
import '../widgets/layout_builder_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 176 : 176),
      width: size.width * 0.85,
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getWidth(20)),
                    topRight: Radius.circular(AppLayout.getWidth(20))),
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(ticket['from']['code'], style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                      Expanded(child: Container()),
                      const ThickContainer(isColor: true,),
                      Expanded(child:
                      Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: const AppLayoutBuilderWidget(sections: 6, isColor: true,)
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor == null ? Colors.white : const Color(0xFF8ACCF7)))),
                         ]
                       )
                      ),
                      const ThickContainer(isColor: true,),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'], style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                    ],
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Text(ticket['from']['name'], style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),
                      ),
                      Text(ticket['flying_time'], style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                      SizedBox(
                        child: Text(ticket['to']['name'], style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getWidth(10)),
                          bottomRight: Radius.circular(AppLayout.getWidth(10)),
                        )
                      ),
                    ),
                  ),
                  Expanded(
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,

                              children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(decoration: BoxDecoration(color: isColor == null ? Colors.white : Colors.grey.shade300)),
                                  )
                              )
                          );},
                      ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getWidth(10)),
                            bottomLeft: Radius.circular(AppLayout.getWidth(10)),
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? AppLayout.getWidth(20) : 0),
                    bottomRight: Radius.circular(isColor == null ? AppLayout.getWidth(20) : 0)),
                color: isColor == null ? Styles.orangeColor : Colors.white,
              ),
              padding: EdgeInsets.only(left: AppLayout.getWidth(16), top: AppLayout.getHeight(10), right: AppLayout.getWidth(16), bottom: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(ticket['date'], style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                      Text(ticket['departure_time'], style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                      Text(ticket['number'].toString(), style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                    ],
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Date', style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),
                      Gap(AppLayout.getHeight(5)),
                      Text('Departure time', style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),
                      Text('Number', style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
