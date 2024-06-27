import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Placeholder(
              fallbackHeight: 150,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: index == 0 ? Colors.green : Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      [
                        'Popular',
                        'New',
                        'Best Selling',
                        'For Holidays',
                        'On Discount',
                      ][index],
                      style: TextStyle(
                          color: index == 0 ? Colors.white : Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Have 24 products',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade200
                    ),
                    child: const Row(
                      children: [
                        Text('data',style: TextStyle(color: Colors.grey,),),
                        Icon(Icons.arrow_drop_down,color: Colors.grey,)
                      ],
                    )),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
