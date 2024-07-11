import 'package:flutter/material.dart';
class Webviewpage extends StatefulWidget {
  const Webviewpage({super.key});

  @override
  State<Webviewpage> createState() => _WebviewpageState();
}

class _WebviewpageState extends State<Webviewpage> {
  final ScrollController _baseController = ScrollController();
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            controller: _baseController,
            shrinkWrap: true,
            children: [
              Image.asset(
                height: 419,
                "assets/images/group_q.png",
                fit: BoxFit.cover,
              ),
              Image.asset(
                height: 530,
                "assets/images/section1BgImageHolder_Mob.png",
                fit: BoxFit.cover,
              ),
              Image.asset(
                height: 1032,
                "assets/images/section2BgHolder_Mob.png",
                fit: BoxFit.cover,
              ),
              Image.asset(
                height: 140,
                "assets/images/footerBgHolder_Mob.png",
                fit: BoxFit.cover,
              ),

            ],
          ),
          NotificationListener(
            onNotification: (notification) {
              _baseController.jumpTo(
                _controller.offset
              );
              return true;
            },
            child: ListView(
              controller: _controller,
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 14),
                  child: Image.asset(
                    height: 46.51,
                    "assets/images/headerLogo_Mob.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 139,right: 139,top: 7.49),
                  child: Image.asset(
                    height: 56,
                    "assets/images/bannerLogoHolder_Mob.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18,right: 18,top: 27),
                  child: Image.asset(
                    height: 142,
                    "assets/images/bannerTextHolder_Mob.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                  child: Image.asset(
                    height: 190,
                    "assets/images/videoHolder_Mob.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80,right: 80,top: 20),
                  child: Image.asset(
                    height: 39.99,
                    "assets/images/proudly brought to you by_Mob.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 50,top: 20),
                  child: Image.asset(
                    height: 333,
                    "assets/images/group_271.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    height: 1032,
                    "assets/images/section2Holder_Mob.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Image.asset(
                    height: 140,
                    "assets/images/footerHolder_Mob.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
