class Subscription{
  String? sName;
  int? service;
  int? booking;
  String? img;

  Subscription({required this.booking, required this.sName, required this.service, required this.img});
}

List<Subscription> subs =[
  Subscription(booking: 1, sName: 'Furniture Cleaning Service', service: 2, img: 'istockphoto-1309386180-612x612.jpg'),
  Subscription(booking: 0, sName: 'Microwave Repair Service', service: 3, img: 'pexels-photo-9242911.webp'),
  Subscription(booking: 1, sName: 'LCD/LED/Smart TV Repair', service: 3, img: 'pngtree-a-man-is-fixing-something-vector-picture-image_2257926.jpg'),
  Subscription(booking: 0, sName: 'Plumbing Checkup Service', service: 3, img: 'repair-4334595_1280.webp'),
];