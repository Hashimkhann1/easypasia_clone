//
//
// import 'package:flutter/material.dart';
//
// class MorewithEasypasia extends StatefulWidget {
//   MorewithEasypasia({super.key});
//
//   @override
//   State<MorewithEasypasia> createState() => _MorewithEasypasiaState();
// }
//
// class _MorewithEasypasiaState extends State<MorewithEasypasia> {
//   final PageController controller = PageController(initialPage: 0);
//
//   int currentPage = 0;
//
//   @override
//   void initState() {
//     controller.addListener(() {
//       int next = controller.page!.round();
//       if(currentPage != next) {
//         setState(() {
//           currentPage = next;
//         });
//       }
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       // height: MediaQuery.of(context).size.height * 0.4,
//       margin: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.grey.withOpacity(0.1),
//                 blurRadius: 2,
//                 spreadRadius: 1
//             )
//           ]
//       ),
//       child: Column(
//         children: [
//           Expanded(
//             child: PageView(
//               controller: controller,
//               scrollDirection: Axis.horizontal,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           MoreQuickButton(title: "Easyload",),
//                           MoreQuickButton(title: "Easycash\nLoan",),
//                           MoreQuickButton(title: "Savings\nPocket",),
//                           MoreQuickButton(title: "Invite & Earn",),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           MoreQuickButton(title: "Easyload",),
//                           MoreQuickButton(title: "Easycash\nLoan",),
//                           MoreQuickButton(title: "Savings\nPocket",),
//                           MoreQuickButton(title: "Invite & Earn",),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           MoreQuickButton(title: "Easyload",),
//                           MoreQuickButton(title: "Easycash\nLoan",),
//                           MoreQuickButton(title: "Savings\nPocket",),
//                           MoreQuickButton(title: "Invite & Earn",),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           MoreQuickButton(title: "Easyload",),
//                           MoreQuickButton(title: "Easycash\nLoan",),
//                           MoreQuickButton(title: "Savings\nPocket",),
//                           MoreQuickButton(title: "Invite & Earn",),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         Icon(Icons.check_circle_outline),
//                         Icon(Icons.check_circle_outline),
//                         Icon(Icons.check_circle_outline),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Icon(Icons.check_circle_outline),
//                         Icon(Icons.check_circle_outline),
//                         Icon(Icons.check_circle_outline),
//                       ],
//                     ),
//                   ],
//                 ),
//
//
//               ],
//             ),
//           ),
//
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: List.generate(2, (index) => AnimatedContainer(
//                  duration: Duration(milliseconds: 300),
//                margin: const EdgeInsets.symmetric(horizontal: 2),
//                height: 12,
//                width: 12,
//                decoration: BoxDecoration(
//                  color: currentPage == index ? Colors.green : Colors.grey.shade200,
//                  shape: BoxShape.circle
//                ),
//              ),),
//            ),
//          )
//         ],
//       ),
//     );
//   }
// }
//
// class MoreQuickButton extends StatelessWidget {
//   final String title;
//   const MoreQuickButton({
//     super.key,
//     required this.title,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(Icons.phone_android_sharp,size: 34,),
//         SizedBox(height: 8,),
//         Text(title.toString(), textAlign: TextAlign.center ,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MorewithEasypasia extends StatefulWidget {
  MorewithEasypasia({super.key});

  @override
  State<MorewithEasypasia> createState() => _MorewithEasypasiaState();
}

class _MorewithEasypasiaState extends State<MorewithEasypasia> {
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;

  List<List<Map>> moreWithData = [
    [
      {
        'title' : "Easyload",
        'icon' : 'assets/svg/morewith1.svg'
      },
      {
        'title' : "Easycash\nLoan",
        'icon' : 'assets/svg/morewith2.svg'
      },
      {
        'title' : "Saving\nPocket",
        'icon' : 'assets/svg/morewith3.svg'
      },
      {
        'title' : "Invite & Earn",
        'icon' : 'assets/svg/morewith4.svg'
      },
    ],
    [
      {
        'title' : "Pinktober",
        'icon' : 'assets/svg/morewith5.svg'
      },
      {
        'title' : "Team Deposit",
        'icon' : 'assets/svg/morewith2.svg'
      },
      {
        'title' : "Daily Rewards",
        'icon' : 'assets/svg/morewith6.svg'
      },
      {
        'title' : "Buy Now Pay\nLeter",
        'icon' : 'assets/svg/morewith7.svg'
      },
    ],
    [
      {
        'title' : "Insurance\nMarketPlace",
        'icon' : 'assets/svg/morewith8.svg'
      },
      {
        'title' : "M-Tag",
        'icon' : 'assets/svg/morewith9.svg'
      },
      {
        'title' : "Rs. 1 Game",
        'icon' : 'assets/svg/morewith10.svg'
      },
      {
        'title' : "Buy Now Pay\nLeter",
        'icon' : 'assets/svg/morewith11.svg'
      },
    ],

  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      int next = controller.page!.round();
      if(currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 2,
                spreadRadius: 1
            )
          ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 1.17,
            child: PageView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              children: [
                _buildFirstPage(),
                _buildSecondPage(),
              ],
            ),
          ),
          // Page indicators
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                2,
                    (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: currentPage == index ? Colors.green : Colors.grey.shade200,
                      shape: BoxShape.circle
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFirstPage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonRow(moreWithData[0]),
          _buildButtonRow(moreWithData[1]),
          _buildButtonRow(moreWithData[2]),
          // _buildButtonRow(),
        ],
      ),
    );
  }

  Widget _buildSecondPage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonRow(moreWithData[0]),
          _buildButtonRow(moreWithData[1]),
          _buildButtonRow(moreWithData[2]),
        ],
      ),
    );
  }

  Widget _buildButtonRow(List<Map> items) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: List.generate(4, (index) {
        // print(moreWithData[index]);
        return MoreQuickButton(title: items[index]['title'],iconPath: items[index]['icon'],);
      }),
      // children: [
      //   MoreQuickButton(title: "Easyload"),
      //   MoreQuickButton(title: "Easycash\nLoan"),
      //   MoreQuickButton(title: "Savings\nPocket"),
      //   MoreQuickButton(title: "Invite & Earn"),
      // ],
    );
  }
}

class MoreQuickButton extends StatelessWidget {
  final String title;
  final String iconPath;
  const MoreQuickButton({
    super.key,
    required this.title,
    required this.iconPath
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Icon(Icons.phone_android_sharp, size: 27),
        SvgPicture.asset(iconPath,width: 60,height: 60,
          // colorFilter: ColorFilter.mode(Colors.green, BlendMode.srcIn),
        ),
        SizedBox(height: 2),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500
          ),
        )
      ],
    );
  }
}