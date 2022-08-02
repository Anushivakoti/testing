import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

class Dashboardwear extends StatefulWidget {
  const Dashboardwear({Key? key}) : super(key: key);

  @override
  State<Dashboardwear> createState() => _DashboardwearState();
}

class _DashboardwearState extends State<Dashboardwear> {
  @override
  Widget build(BuildContext context) {
    return WatchShape(
        builder: (BuildContext context, WearShape shape, Widget? child) {
      return AmbientMode(builder: (context, mode, child) {
        return const Scaffold(
            // body: Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 5),
            //   child: ListView.builder(
            //       padding: const EdgeInsets.symmetric(vertical: 10),
            //       shrinkWrap: true,
            //       scrollDirection: Axis.horizontal,
            //       itemCount: AppData.recommendedProducts.length,
            //       itemBuilder: (_, index) {
            //         return Padding(
            //           padding: const EdgeInsets.only(right: 20),
            //           child: Container(
            //             height: 100,
            //             width: 170,
            //             decoration: BoxDecoration(
            //               color: AppData
            //                   .recommendedProducts[index].cardBackgroundColor,
            //               borderRadius: BorderRadius.circular(5),
            //             ),
            //             child: Row(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 5),
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       const Text(
            //                         ' Welcome to the World \n of the Guitar Shop !',
            //                         style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 9,
            //                         ),
            //                       ),
            //                       const SizedBox(height: 5),
            //                       const Text(
            //                         ' Big Saving Upto \n 30% off',
            //                         style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 9,
            //                         ),
            //                       ),
            //                       const SizedBox(height: 8),
            //                       ElevatedButton(
            //                         onPressed: () {},
            //                         style: ElevatedButton.styleFrom(
            //                           primary: AppData.recommendedProducts[index]
            //                               .buttonBackgroundColor,
            //                           elevation: 0,
            //                           padding: const EdgeInsets.symmetric(
            //                               horizontal: 18),
            //                           shape: RoundedRectangleBorder(
            //                             borderRadius: BorderRadius.circular(8),
            //                           ),
            //                         ),
            //                         child: Text(
            //                           "Buy Now",
            //                           style: TextStyle(
            //                               fontSize: 8,
            //                               color: AppData
            //                                   .recommendedProducts[index]
            //                                   .buttonTextColor!),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //                 const Spacer(),
            //                 Image.asset(
            //                   'asset/images/shopping.png',
            //                   height: 75,
            //                   fit: BoxFit.cover,
            //                 )
            //               ],
            //             ),
            //           ),
            //         );
            //       }),
            // ),
            );
      });
    });
  }
}
