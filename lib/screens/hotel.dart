import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/layout.dart';
import 'package:ticket_app/utils/styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);

    return Container(
      width: size.width * 0.6,
      height: 350,
      margin: const EdgeInsets.only(right: 17, top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 5,
              blurRadius: 20,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel["image"]}")),
            ),
          ),
          const Gap(10),
          Text(
            hotel["place"],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Text(
            hotel["destination"],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            "\$${hotel["price"]}/night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
