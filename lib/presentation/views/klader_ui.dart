import 'package:flutter/material.dart';

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
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                margin: const EdgeInsets.symmetric(vertical: 16),
              ),
              SizedBox(
                height: 42,
                child: Container(
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text('New Arrivals'),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                      Container(
                        height: 300.0,
                        color: Colors.blue,
                      ),
                      const SizedBox(height: 28.0),
                      Row(
                        children: [
                          const Text('Shop Again'),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                      Container(
                        height: 300.0,
                        color: Colors.blue,
                      ),
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
