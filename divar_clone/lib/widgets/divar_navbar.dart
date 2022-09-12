import 'package:flutter/material.dart';

class DivarBottomNavigationBar extends StatefulWidget {
  const DivarBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<DivarBottomNavigationBar> createState() =>
      _DivarBottomNavigationBarState();
}

class _DivarBottomNavigationBarState extends State<DivarBottomNavigationBar> {
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xffffffff)),
      child: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 56,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBottomBar(
                    text: "آگهی ها",
                    icon: Icons.home,
                    selected: _selectedIndex == 0,
                    onPressed: () {
                      setState(() {
                        _selectedIndex == 0;
                      });
                    }),
                IconBottomBar(
                    text: "دسته ها",
                    icon: Icons.format_list_bulleted,
                    selected: _selectedIndex == 1,
                    onPressed: () {
                      setState(() {
                        _selectedIndex == 1;
                      });
                    }),
                IconBottomBar(
                    text: "ثبت آگهی",
                    icon: Icons.add_circle,
                    selected: _selectedIndex == 2,
                    onPressed: () {
                      setState(() {
                        _selectedIndex == 2;
                      });
                    }),
                IconBottomBar(
                    text: "چت",
                    icon: Icons.chat,
                    selected: _selectedIndex == 3,
                    onPressed: () {
                      setState(() {
                        _selectedIndex == 3;
                      });
                    }),
                IconBottomBar(
                    text: "دیوار من",
                    icon: Icons.person,
                    selected: _selectedIndex == 4,
                    onPressed: () {
                      setState(() {
                        _selectedIndex == 4;
                      });
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  const IconBottomBar(
      {required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25.0,
            color: selected ? Color(0xFF922424) : Color(0xFF504E4E),
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              height: .5,
              color: selected ? Color(0xFF922424) : Color(0xFF504E4E)),
        )
      ],
    );
  }
}

// class BottomNavBarFb5 extends StatelessWidget {
//   const BottomNavBarFb5({Key? key}) : super(key: key);

//   final primaryColor = const Color(0xff4338CA);
//   final secondaryColor = const Color(0xff6D28D9);
//   final accentColor = const Color(0xffffffff);
//   final backgroundColor = const Color(0xffffffff);
//   final errorColor = const Color(0xffEF4444);

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       color: primaryColor,
//       child: SizedBox(
//         height: 56,
//         width: MediaQuery.of(context).size.width,
//         child: Padding(
//           padding: const EdgeInsets.only(left: 25.0, right: 25.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
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
//                   text: "Add",
//                   icon: Icons.add_to_photos_outlined,
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
