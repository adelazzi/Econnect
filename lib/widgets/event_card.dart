import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:econnect/utils/app_style.dart';
import 'package:intl/intl.dart';

import '../constant.dart';
import '../screens/Root/event_details.dart';

class EventCard extends StatelessWidget {
  const EventCard(
      {super.key,
      required this.eventTitle,
      required this.eventDescription,
      required this.eventParticipants,
      required this.eventDate,
      required this.eventLocation});
  final String eventTitle;
  final String eventDescription;
  final int eventParticipants;
  final DateTime eventDate;
  final String eventLocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Card(
        color: background,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: (10), horizontal: (10)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: (90),
                    height: (80),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/image.png'), // Replace with your image asset path
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Gap(
                    (16),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Event",
                              style: Styles.headLineSmall.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Styles.primaryColor,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.menu,
                                color: Styles.primaryColor,
                                size: (20),
                              ),
                            ),
                            const Gap(5),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                FluentIcons.bookmark_24_regular,
                                color: Styles.primaryColor,
                                size: (20),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          eventTitle,
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Styles.titleColor,
                          ),
                        ),
                        Gap((5)),
                        Text(
                          '${eventDescription.substring(0, 40)}...',
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Styles.titleColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(
                (20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: (20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '$eventParticipants',
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Styles.titleColor,
                          ),
                        ),
                        Text(
                          "Participant",
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 12,
                            color: Styles.disabledColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: (4)),
                      width: 1,
                      height: 25,
                      color: Styles.textColor,
                    ),
                    Column(
                      children: [
                        Text(
                          '${eventDate.day} ${(DateFormat('MMMM').format(eventDate)).substring(0, 3)}',
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Styles.titleColor,
                          ),
                        ),
                        Text(
                          "Date",
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 12,
                            color: Styles.disabledColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: (4)),
                      width: (1),
                      height: (25),
                      color: Styles.textColor,
                    ),
                    Column(
                      children: [
                        Text(
                          eventLocation.substring(0, 3),
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Styles.titleColor,
                          ),
                        ),
                        Text(
                          "Location",
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 12,
                            color: Styles.disabledColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap((15)),
              //Button
              InkWell(
                // event details
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context) {
                        return event();
                      }), );
                },
                child: Container(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  decoration: BoxDecoration(
                      color: Botton_actif,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "More Details",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




class EventtecketCard extends StatelessWidget {
  const EventtecketCard(
      {super.key,
      required this.eventTitle,
      required this.eventDescription,
      required this.eventParticipants,
      required this.eventDate,
      required this.eventLocation});
  final String eventTitle;
  final String eventDescription;
  final int eventParticipants;
  final DateTime eventDate;
  final String eventLocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Card(
        color: background,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: (10), horizontal: (10)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: (90),
                    height: (80),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/image.png'), // Replace with your image asset path
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Gap(
                    (16),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Event",
                              style: Styles.headLineSmall.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Styles.primaryColor,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.menu,
                                color: Styles.primaryColor,
                                size: (20),
                              ),
                            ),
                            const Gap(5),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                FluentIcons.bookmark_24_regular,
                                color: Styles.primaryColor,
                                size: (20),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          eventTitle,
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Styles.titleColor,
                          ),
                        ),
                        Gap((5)),
                        Text(
                          '${eventDescription.substring(0, 40)}...',
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Styles.titleColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(
                (20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: (20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '$eventParticipants',
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Styles.titleColor,
                          ),
                        ),
                        Text(
                          "Participant",
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 12,
                            color: Styles.disabledColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: (4)),
                      width: 1,
                      height: 25,
                      color: Styles.textColor,
                    ),
                    Column(
                      children: [
                        Text(
                          '${eventDate.day} ${(DateFormat('MMMM').format(eventDate)).substring(0, 3)}',
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Styles.titleColor,
                          ),
                        ),
                        Text(
                          "Date",
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 12,
                            color: Styles.disabledColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: (4)),
                      width: (1),
                      height: (25),
                      color: Styles.textColor,
                    ),
                    Column(
                      children: [
                        Text(
                          eventLocation.substring(0, 3),
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Styles.titleColor,
                          ),
                        ),
                        Text(
                          "Location",
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 12,
                            color: Styles.disabledColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap((15)),
              //Button
              InkWell(
                // event details
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context) {
                        return event();
                      }), );
                },
                child: Container(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  decoration: BoxDecoration(
                      color: Botton_actif,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "Get Your Ticket",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/ticket.svg"
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
