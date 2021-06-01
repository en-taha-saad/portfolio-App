import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import 'coolors.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.green700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "All Works,\n"
              .richText
              .withTextSpanChildren(
                  ["Selected projects".textSpan.yellow400.make()])
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                ProjectWidget(
                    title: 'Shop',
                    func: () {
                      launch(
                        '',
                      );
                    }),
                ProjectWidget(
                    title: 'Autism',
                    func: () {
                      launch(
                        '',
                      );
                    }),
                ProjectWidget(
                    title: 'Recipes App',
                    func: () {
                      launch(
                        'https://www.youtube.com/watch?v=AUzvhW_j8P0',
                      );
                    }),
                ProjectWidget(
                    title: 'News App',
                    func: () {
                      launch(
                        'https://www.youtube.com/watch?v=5KW1F-kMPtg',
                      );
                    }),
                ProjectWidget(
                    title: 'expanses tracker',
                    func: () {
                      launch(
                        'https://www.youtube.com/watch?v=Iq2vDYfRHUA',
                      );
                    }),
              ],
              height: 170,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
              enlargeCenterPage: true,
            ),
          ),
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;
  final func;

  const ProjectWidget({required this.title, required this.func});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(Vx.roundedSm as OutlinedBorder?),
            overlayColor: MaterialStateProperty.all(Coolors.secondaryColor),
          ),
          onPressed: func,
          child: title.text.bold.white.xl.wide.center
              .make()
              .box
              .p8
              .roundedLg
              .alignCenter
              // .square(200)
              .neumorphic(
                  color: Vx.green700, elevation: 5.0, curve: VxCurve.flat)
              .make(),
        ),
        ElevatedButton(
          onPressed: func,
          child: Text('Preview'),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(Vx.roundedSm as OutlinedBorder?),
            overlayColor: MaterialStateProperty.all(Coolors.secondaryColor),
          ),
        ),
      ],
    );
  }
}
