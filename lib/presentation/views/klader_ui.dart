import 'package:flutter/material.dart';
import 'package:shop_ui/presentation/widgets/tab_scroll.dart';

class ShopView extends StatefulWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Klader'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 52.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.grey[200],
                ),
                margin:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: 'search',
                        border: InputBorder.none),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                child: SizedBox(
                  height: 38,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      scrollShape("All"),
                      scrollShape("Clothes"),
                      scrollShape("Shoes"),
                      scrollShape("Accessories")
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'New Arrivals',
                              style: TextStyle(fontSize: 28),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 280.0,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 150,
                              margin: const EdgeInsets.only(right: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2017/08/01/11/48/woman-2564660_960_720.jpg'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            right: 8,
                                            top: 8,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 14,
                                              foregroundColor: Colors.black,
                                              child: IconButton(
                                                onPressed: () {},
                                                iconSize: 15,
                                                icon: const Icon(
                                                  Icons.favorite_border,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Text('Addidas Hoodie'),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Text('\$40.99'),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 28.0),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Shop Again',
                              style: TextStyle(fontSize: 28),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 280.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 150,
                              margin: const EdgeInsets.only(right: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2017/08/01/11/48/woman-2564660_960_720.jpg'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            right: 8,
                                            top: 8,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 14,
                                              foregroundColor: Colors.black,
                                              child: IconButton(
                                                onPressed: () {},
                                                iconSize: 15,
                                                icon: const Icon(
                                                  Icons.favorite_border,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Text('Hoodie'),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Text('\$40.99'),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 120),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 24.0,
            left: 16.0,
            right: 16.0,
            child: Container(
              height: 80.0,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: StadiumBorder(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.home_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.apps),
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.account_circle_outlined),
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
