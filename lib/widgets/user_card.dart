import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:econnect/utils/app_style.dart';

class UserCard extends StatelessWidget {
  const UserCard(
      {super.key,
      required this.profession,
      required this.professionDescription,
      required this.userCategoryImage});
  final String profession;
  final String professionDescription;
  final String userCategoryImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("taped");
      },
      child: Card(
        margin: EdgeInsets.symmetric(
          horizontal: (10),
          vertical: (10),
        ),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: (15), horizontal: (20)),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profession,
                    style: Styles.headLine1.copyWith(fontSize: 20),
                  ),
                  const Gap(10),
                  Text(
                    '${professionDescription.substring(0, 24)}...',
                    style: Styles.headLineSmall.copyWith(
                      fontSize: 12,
                      color: Styles.disabledColor,
                    ),
                  ),
                ],
              ),
              const Gap(16),
              const Spacer(),
              Container(
                width: (110),
                height: (100),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/$userCategoryImage'),
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
