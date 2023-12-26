import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../constant.dart';
import '../../../widgets/event_card.dart';

class calender_page extends StatefulWidget {
  const calender_page({super.key});

  @override
  State<calender_page> createState() => _calender_pageState();
}

class _calender_pageState extends State<calender_page> {
  DateTime Today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focustDay) {
    setState(() {
      Today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // My calandar
          Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      child: Text(
                        "My Calendar",
                        style: TextStyle(
                            color: Text_Appbar,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                    SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.asset("assets/icons/calendar.png")),
                  ],
                ),
              )),
          // calandar
          Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TableCalendar(
                    locale: "en_US",
                    rowHeight: 35,
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                    ),
                    selectedDayPredicate: (day) => isSameDay(day, Today),
                    calendarStyle: CalendarStyle(
                      selectedDecoration: BoxDecoration(
                        color: Botton_actif,
                        shape: BoxShape.circle,
                      ),
                      todayDecoration: BoxDecoration(
                        color: Botton_next,
                        shape: BoxShape.circle,
                      ),
                    ),
                    onDaySelected: _onDaySelected,
                    availableGestures: AvailableGestures.all,
                    focusedDay: Today,
                    firstDay: DateTime.utc(2023, 1, 1),
                    lastDay: DateTime.utc(2050, 1, 1)),
              )),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(top:6),
              child: ListView(
                children: [
                  EventtecketCard(
                    eventTitle: 'Planet Cleanup',
                    eventDescription:
                        'Help us revive the garden of vector hugo...',
                    eventParticipants: 14,
                    eventDate: DateTime(2023, 05, 02),
                    eventLocation: 'Paris',
                  ),
                  EventtecketCard(
                    eventTitle: 'Planet Cleanup',
                    eventDescription:
                        'Help us revive the garden of vector hugo...',
                    eventParticipants: 14,
                    eventDate: DateTime(2023, 05, 02),
                    eventLocation: 'Paris',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
