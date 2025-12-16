import 'package:easypasia_clone/res/components/home_widgets/more-with_easypasia.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f4f4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                width: double.infinity,
                // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                height: MediaQuery.of(context).size.height * 0.27,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    // Position the 'Sun' (Yellow) at the top center
                    center: Alignment(0.0, -0.6,),

                    // Control how wide the glow spreads
                    radius: 1.2,

                    colors: [
                      Color(0xFFfdedaa), // Center: Yellow Glow
                      Color(0xFF74CC95), // Mid: Mint Green
                      Colors.white,
                    ],

                    // Control where each color transition happens (0.0 to 1.0)
                    stops: [0.0, 0.6, 0.82,],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        color: Colors.white,
                      ),
                    ),


                    // header drawer, logo and search and notification icons
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          // drawer
                          CircleAvatar(
                            child: Text("MH",style: TextStyle(color: Colors.white,fontSize: 12),),
                            backgroundColor: Color(0xFF71a8bf),
                            radius: 17,
                          ),

                          // logo
                          Image.asset('assets/images/logo.png',width: 134,),

                          // Notification and Search icons
                          Row(
                            children: [
                              Icon(Icons.search,size: 26,),
                              SizedBox(width: 10,),
                              Icon(Icons.notifications_none,size: 26,),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(left: 41,top: 43, child: CircleAvatar(backgroundColor: Colors.black, radius: 8, child: Icon(color: Colors.white, Icons.menu_outlined,size: 13,))),

                    // balance card
                    Positioned(
                      top: 70,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 136,
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                        decoration: BoxDecoration(
                          color: Color(0xFF006d5a),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // easypasia title
                            IntrinsicWidth(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF1b8774),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 6,vertical: 2),
                                child: Row(
                                  children: [
                                    Icon(Icons.wallet_outlined,color: Colors.white,size: 20,),
                                    SizedBox(width: 6,),
                                    Text("easypasia Account",style: TextStyle(fontSize: 11, color: Colors.white,fontWeight: FontWeight.w500),)
                                  ],
                                ),
                              ),
                            ),

                           // all Information
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.end,
                             children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   // User Name
                                   Text("MUHAMMAD HASHIM",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 10),),
                                   SizedBox(height: 2,),

                                   // Phone Number
                                   Text("03139217887",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 21,letterSpacing: 0),),
                                   SizedBox(height: 4,),

                                   // sign in description
                                   Text("Sign in to you easypasia account",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 11),),

                                 ],
                               ),

                               Container(
                                 padding: EdgeInsets.symmetric(horizontal: 34,vertical: 4),
                                 decoration: BoxDecoration(
                                   color: Color(0xFF01bd5f),
                                   borderRadius: BorderRadius.circular(16)
                                 ),
                                 child: Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 12),
                               ))
                             ],
                           ),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 16,),

              // Quick Action Button
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 18.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   QuickButton(svgPath: 'assets/svg/quickAction1.svg',title: "Send Money",),
                   QuickButton(svgPath: 'assets/svg/quickAction2.svg',title: "Bill Payment",),
                   QuickButton(svgPath: 'assets/svg/quickAction3.svg',title: "Mobile Packages",),
                 ],
               ),
             ),
              SizedBox(height: 17,),

              // more with easypasia
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("More with easypasia",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900),),
              ),

              // more with easypasia button
             MorewithEasypasia()
            ],
          ),
        ),
      ),
    );
  }
}

class QuickButton extends StatelessWidget {
  final String svgPath;
  final String title;
  const QuickButton({
    super.key,
    required this.svgPath,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98,
      height: 87,
      alignment: Alignment.center,
      // padding: EdgeInsets.all(horizontal: 20,vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(icon,size: 32,),
          SvgPicture.asset(svgPath,width: 54,height: 54,
            colorFilter: ColorFilter.mode(Colors.green, BlendMode.srcIn),
          ),
          Text(title.toString(),style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400),),
        ],
      ),
    );
  }
}
