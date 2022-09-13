import 'package:flutter/material.dart';
import 'package:divar_clone/models/divar_posts_model.dart';

class DivarPostLists extends StatelessWidget {
  final Item item;
  const DivarPostLists({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xFFCCC7C7)),
            borderRadius: BorderRadius.circular(8.0)),
        elevation: 0,
        color: const Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      color: Color(0xFF2B2B2C),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Text(
                    item.cate,
                    style: const TextStyle(
                      color: Color(0xFF858383),
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Text(
                    item.price,
                    style: const TextStyle(
                      color: Color(0xFF858383),
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Text(
                    item.date,
                    style: const TextStyle(
                      color: Color(0xFF858383),
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10.0),
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        item.image,
                      )),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
