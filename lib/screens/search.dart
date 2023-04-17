import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/layout.dart';
import 'package:ticket_app/utils/styles.dart';
import 'package:ticket_app/widgets/double_text.dart';
import 'package:ticket_app/widgets/icon_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFF4F6FD)),
            child: Row(
              children: [
                Container(
                  width: size.width * 0.44,
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(50)),
                      color: Colors.white),
                  child: const Center(child: Text('Airline tickets')),
                ),
                Container(
                  width: size.width * 0.44,
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(50)),
                  ),
                  child: const Center(child: Text('Hotels')),
                ),
              ],
            ),
          ),
          const Gap(25),
          const IconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const Gap(15),
          const IconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          const Gap(20),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xD91130CE)),
            child: Center(
              child: Text("Find tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white)),
            ),
          ),
          const Gap(40),
          const DoubleText(bigText: "Upcoming Flights", smallText: "View all"),
          const Gap(15),
          Row(
            children: [
              Container(
                height: 390,
                width: size.width * 0.42,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Container(
                    height: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/sit.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  const Gap(12),
                  Text(
                    "20% discount in the early booking of this flight. Don't miss out this chance.",
                    style: Styles.headLineStyle2,
                  )
                ]),
              ),
              const Gap(15),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: 160,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFF3AB8B8),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discount\nfor survey",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Gap(10),
                        Text(
                          "Take the survey about our services and get discount",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 18, color: Color(0xFF189999)),
                        color: Colors.transparent),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
