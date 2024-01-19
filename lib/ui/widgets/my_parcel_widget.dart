import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myparcel/main.dart';
import 'package:myparcel/utils/image_utils.dart';

class MyParcelWidget extends StatelessWidget {
  const MyParcelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Container(
          height: 174,
          decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 10,
                    color: Theme.of(context).shadowColor,
                    offset: Offset(0, 0))
              ]),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "0887463232377398739",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Container(
                    height: 31,
                    width: 78,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(ImageUtils.icAmazon))),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "In Transit",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Last update : 3 hours ago",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    height: 5,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.5),
                    ),
                    child: LinearProgressIndicator(
                      value: .7,
                      color: Theme.of(context).appBarTheme.backgroundColor,
                      backgroundColor: const Color(0xFFF8F8F8),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 60,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Details",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        SvgPicture.asset(ImageUtils.icDetailsSVG)
                      ],
                    ),
                    Container(
                      height: 1,
                      color: Colors.black,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
