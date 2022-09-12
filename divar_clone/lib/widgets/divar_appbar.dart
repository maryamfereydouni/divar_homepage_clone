import 'package:flutter/material.dart';

class DivarAppBar extends StatelessWidget with PreferredSizeWidget {
  const DivarAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 3.0,
      shadowColor: Colors.black26,
      title: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: const Color(0XFFF0F0F1),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: const [
              Icon(
                Icons.search,
                color: Color(0xFF909296),
              ),
              SizedBox(
                width: 8.0,
              ),
              Text("جست و جو در همه ی آگهی ها",
                  style: TextStyle(color: Color(0xFF909296), fontSize: 18.0))
            ],
          ),
          Row(
            children: const [
              Text(
                "|",
                style: TextStyle(
                  color: Color(0xFF909296),
                ),
              ),
              SizedBox(
                width: 6.0,
              ),
              Text(
                "شیراز",
                style: TextStyle(
                  color: Color(0XFF62666d),
                ),
              ),
              SizedBox(
                width: 3.0,
              ),
              Icon(
                Icons.location_on,
                color: Color(0xFF909296),
              ),
            ],
          )
        ]),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

// class BottomNavBarFb2 extends StatelessWidget {
//   const BottomNavBarFb2({Key? key}) : super(key: key);

//   final primaryColor = const Color(0xff4338CA);
//   final secondaryColor = const Color(0xff6D28D9);
//   final accentColor = const Color(0xffffffff);
//   final backgroundColor = const Color(0xffffffff);
//   final errorColor = const Color(0xffEF4444);

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       color: Colors.white,
//       child: SizedBox(
//         height: 56,
//         width: MediaQuery.of(context).size.width,
//         child: Padding(
//           padding: const EdgeInsets.only(left: 25.0, right: 25.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               IconBottomBar(
//                   text: "Home",
//                   icon: Icons.home,
//                   selected: true,
//                   onPressed: () {}),
//               IconBottomBar(
//                   text: "Search",
//                   icon: Icons.search_outlined,
//                   selected: false,
//                   onPressed: () {}),
//               IconBottomBar(
//                   text: "Cart",
//                   icon: Icons.local_grocery_store_outlined,
//                   selected: false,
//                   onPressed: () {}),
//               IconBottomBar(
//                   text: "Calendar",
//                   icon: Icons.date_range_outlined,
//                   selected: false,
//                   onPressed: () {})
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class IconBottomBar extends StatelessWidget {
//   const IconBottomBar(
//       {Key? key,
//       required this.text,
//       required this.icon,
//       required this.selected,
//       required this.onPressed})
//       : super(key: key);
//   final String text;
//   final IconData icon;
//   final bool selected;
//   final Function() onPressed;

//  final primaryColor = const Color(0xff4338CA);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         IconButton(
//           onPressed: onPressed,
//           icon: Icon(
//             icon,
//             size: 25,
//             color: selected ? primaryColor : Colors.black54,
//           ),
//         ),
//          Text(
//           text,
//           style: TextStyle(
//               fontSize: 12,
//               height: .1,
//               color: selected
//                   ? primaryColor
//                   : Colors.grey.withOpacity(.75)),
//         )
//       ],
//     );
//   }
// }












// --------------------------------








// class BottomNavBarFb5 extends StatelessWidget {
//   const BottomNavBarFb5({Key? key}) : super(key: key);

//   final primaryColor = const Color(0xff4338CA);
//   final secondaryColor = const Color(0xff6D28D9);
//   final accentColor = const Color(0xffffffff);
//   final backgroundColor = const Color(0xffffffff);
//   final errorColor = const Color(0xffEF4444);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient:
//             LinearGradient(colors: [Color(0xff4338CA), Color(0xff6D28D9)]),
//       ),
//       child: BottomAppBar(
//         elevation: 0,
//         color: Colors.transparent,
//         child: SizedBox(
//           height: 56,
//           width: MediaQuery.of(context).size.width,
//           child: Padding(
//             padding: const EdgeInsets.only(left: 25.0, right: 25.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 IconBottomBar(
//                     text: "Home",
//                     icon: Icons.home,
//                     selected: true,
//                     onPressed: () {}),
//                 IconBottomBar(
//                     text: "Search",
//                     icon: Icons.search_outlined,
//                     selected: false,
//                     onPressed: () {}),
//                 IconBottomBar(
//                     text: "Add",
//                     icon: Icons.add_to_photos_outlined,
//                     selected: false,
//                     onPressed: () {}),
//                 IconBottomBar(
//                     text: "Cart",
//                     icon: Icons.local_grocery_store_outlined,
//                     selected: false,
//                     onPressed: () {}),
//                 IconBottomBar(
//                     text: "Calendar",
//                     icon: Icons.date_range_outlined,
//                     selected: false,
//                     onPressed: () {})
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class IconBottomBar extends StatelessWidget {
//   const IconBottomBar(
//       {Key? key,
//       required this.text,
//       required this.icon,
//       required this.selected,
//       required this.onPressed})
//       : super(key: key);
//   final String text;
//   final IconData icon;
//   final bool selected;
//   final Function() onPressed;

//   final primaryColor = const Color(0xff4338CA);
//   final accentColor = const Color(0xffffffff);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         IconButton(
//           onPressed: onPressed,
//           icon:
//               Icon(icon, size: 25, color: selected ? accentColor : Colors.grey),
//         ),
//         Text(
//           text,
//           style: TextStyle(
//               fontSize: 12,
//               height: .1,
//               color: selected ? accentColor : Colors.grey),
//         )
//       ],
//     );
//   }
// }
