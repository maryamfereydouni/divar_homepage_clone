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
        elevation: 0,
        color: const Color(0xFFF1ECEC),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
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
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: NetworkImage(
                      item.image,
                    ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// ListTile(
//             leading: Image.network(
//               item.image,
//               height: 90,
//               width: 90,
//             ),
//             title: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Center(
//                   child: Text(item.name,
//                       style: const TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18))),
//             ),
//             subtitle: Center(
//                 child: Text(item.desc,
//                     style: TextStyle(
//                         color: Colors.indigo.shade500,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15))),
//             trailing: Text(
//               "\$${item.price}",
//               style: const TextStyle(
//                   color: Colors.purple,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20),
//             ),
//           ),