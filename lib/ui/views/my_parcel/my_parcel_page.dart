import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myparcel/ui/widgets/my_parcel_widget.dart';
import 'package:myparcel/utils/image_utils.dart';

class ParcelPage extends StatelessWidget {
  const ParcelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              "My parcel",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          centerTitle: false,
          pinned: true,
          titleSpacing: 0.0,
          snap: false,
          floating: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: CircleAvatar(
                child: ClipOval(child: Image.network(ImageUtils.icProfile)),
              ),
            )
          ],
          expandedHeight: 316,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          shadowColor: Colors.transparent,
          flexibleSpace: FlexibleSpaceBar(
              background: Column(
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Enter parcel number or qr code",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7, bottom: 24),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Theme.of(context).backgroundColor),
                            height: 49,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(
                                style: TextStyle(color: Colors.black),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Tracking number",
                                    fillColor: Colors.black,
                                    focusedBorder: InputBorder.none,
                                    prefixIcon: Icon(Icons.search)),
                              ),
                            ),
                          )),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 49,
                            width: 50,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Theme.of(context).backgroundColor),
                            child: SvgPicture.asset(ImageUtils.icQRCodeSVG),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: TextButton(
                          style: Theme.of(context).textButtonTheme.style,
                          onPressed: () {},
                          child: Text(
                            "Track Order",
                            style: Theme.of(context).textTheme.bodyLarge,
                          )),
                    )
                  ],
                ),
              )),
            ],
          )),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
        ),
        const SliverPadding(
          padding: EdgeInsets.only(top: 32),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Parcels",
                  style: Theme.of(context).textTheme.displaySmall,
                )
              ],
            ),
          )
        ])),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          childCount: 100,
          (_, index) => const MyParcelWidget(),
        ))
      ],
    );
  }
}
