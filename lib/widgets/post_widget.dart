// ignore_for_file: must_be_immutable

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:econnect/utils/app_style.dart';
import 'package:intl/intl.dart';

import '../constant.dart';

class PostWidget extends StatelessWidget {
  PostWidget(
      {super.key,
      required this.photo,
      required this.blogAuthor,
      required this.publishDate,
      required this.blogDescreption,
      required this.numberOfLikes,
      required this.numberOfComments});
  final String blogAuthor;
  final DateTime publishDate;
  final String blogDescreption;
  final int numberOfLikes;
  final int numberOfComments;
  var photo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10, right: 8, left: 8),
      child: Card(
        elevation: 2,
        color: background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.all(
            (15),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: (5)),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(photo),
                      radius: 20,
                    ),
                    Gap((8)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          blogAuthor,
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Styles.titleColor,
                          ),
                        ),
                        Text(
                          '${DateFormat.d().format(publishDate)}j ${DateFormat.H().format(publishDate)}h',
                          style: Styles.headLineSmall.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Styles.disabledColor,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset("assets/money.svg")),
                          Gap((5)),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              FluentIcons.bookmark_24_regular,
                              color: Styles.primaryColor,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap((10)),
              Text(
                '${blogDescreption.substring(0, 50)}...',
                style: Styles.headLineSmall.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Styles.textColor,
                ),
              ),
              Gap((20)),
              Container(
                height: (260),
                width: (350),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap((10)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset("assets/Heart.svg"),
                  ),
                  Gap((10)),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset("assets/Chat.svg"),
                  ),
                  Gap((10)),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset("assets/Send.svg"),
                  ),
                  const Spacer(),
                  Text(
                    '$numberOfLikes likes',
                    style: Styles.headLineSmall.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Styles.textColor,
                    ),
                  ),
                  Gap((10)),
                  Text(
                    '$numberOfComments comments',
                    style: Styles.headLineSmall.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Styles.textColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
