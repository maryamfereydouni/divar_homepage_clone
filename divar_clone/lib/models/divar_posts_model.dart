class DivarPostsModel {
  static final items = [
    Item(
        id: 1,
        name: "کابینت پیش ساخته و سفارشی اهورا",
        cate: "نو",
        price: "700,000",
        date: "دقایقی پیش",
        image:
            "https://s101.divarcdn.com/static/pictures/1662809873/gYrooOAq.jpg"),
    Item(
        id: 2,
        name: "فروش آپارتمان 220متری نوساز و صفر",
        cate: "نوساز",
        price: "2,280,000,000",
        date: "پنجاه دقیقه پیش پیش",
        image:
            "https://s101.divarcdn.com/static/pictures/1662809866/wYZg1i9q.jpg"),
    Item(
        id: 3,
        name: "گوشی iphone12",
        cate: "نو",
        price: "35,000,000",
        date: "لحظاتی پیش",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfOxwodBL81UDhB4syHn3gYZOhD3EqjD_LDMyvmBaOt8JUxrcEVgA85FbJT4IJGyqhJfU&usqp=CAU"),
    Item(
        id: 4,
        name: "فروش موتورسیکلت تیوا مدل88",
        cate: "کارکرده",
        price: "توافقی",
        date: "دو روز  پیش",
        image:
            "https://s101.divarcdn.com/static/pictures/1662809842/wYcYHcjm.jpg"),
    Item(
        id: 5,
        name: "دایود دستگاه لیزر مو تیتانیوم",
        cate: "قدیمی درحد نو",
        price: "235,000,000",
        date: "یک ساعت پیش",
        image:
            "https://s101.divarcdn.com/static/pictures/1662810103/gYRCcgOe.jpg"),
    Item(
        id: 6,
        name: "پژو 206 SD V8، مدل ۱۳۹۴",
        cate: "سالم و نو",
        price: "220,000,000",
        date: "چهار ساعت پیش",
        image:
            "https://s101.divarcdn.com/static/pictures/1662809699/wYcM3ovk.jpg"),
    Item(
        id: 7,
        name: "پژو پارس LX TU5، مدل ۱۳۹۷",
        cate: "خورد خاکشیر",
        price: "80,000,000",
        date: "یک ربع پیش ",
        image:
            "https://s101.divarcdn.com/static/pictures/1662809761/wYcMn29F.jpg"),
    Item(
        id: 8,
        name: "فرش 6متری کاشان 700شانه",
        cate: "نو",
        price: "980,000",
        date: "پنج روز پیش",
        image:
            "https://s101.divarcdn.com/static/pictures/1662809740/wYcYXJ6f.jpg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String cate;
  final String price;
  final String date;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.cate,
      required this.price,
      required this.date,
      required this.image});
}
