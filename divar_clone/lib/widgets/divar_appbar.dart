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
            children: [
              IconButton(
                  onPressed: () {
                    showSearch(
                        context: context, delegate: CustomSearchDelegate());
                  },
                  icon: const Icon(
                    Icons.search,
                    color: Color(0xFF922424),
                  )),
              // Icon(
              //   Icons.search,
              //   color: Color(0xFF909296),
              // ),
              const SizedBox(
                width: 8.0,
              ),
              const Text("جست و جو در همه ی آگهی ها",
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

@override
Size get preferredSize => const Size.fromHeight(56.0);

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "گوشی ",
    "iphone",
    "آپارتمان",
    "موتورسیکلت",
    "کابینت",
    "دستگاه لیزر",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var cate in searchTerms) {
      if (cate.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(cate);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var cate in searchTerms) {
      if (cate.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(cate);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
