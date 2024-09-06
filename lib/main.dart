import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Marketing list",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;int _counter1 = 0;int _counter2 = 0;
  int _price = 0;int _price1 = 0;int _price2 = 0;

  int _totalPrice = 0;
  void _updateTotalPrice() {
    setState(() {
      _totalPrice = _price + _price1 + _price2;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Padding(
          padding: EdgeInsets.all(10),
          child: Text("My Bag", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Container(
        color:Colors.grey[200],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                height: 165,
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [

                    SizedBox(
                      width: 130,
                      height: double.infinity,
                      child: Image.asset(
                        "assets/images/tshirt1.jpg",
                        fit: BoxFit.cover,
                        height: double.infinity,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Product",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Row(
                              children: [

                                RichText(
                                    text:const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Color: ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Black",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                ),
                                const SizedBox(width: 8,),
                                RichText(
                                    text:const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "size: ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "L",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                ),

                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: (){
                                    setState(() {
                                      _counter++;
                                      _price=50*_counter;
                                      _updateTotalPrice();
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(10),
                                    elevation: 5,
                                    shadowColor: Colors.black,
                                  ),
                                  child: const Icon(Icons.add, size: 15),
                                ),
                                const SizedBox(width: 1),
                                Text("$_counter"),
                                const SizedBox(width: 1),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (_counter > 0) {
                                        _counter--;
                                        _price = (50* _counter);
                                        _updateTotalPrice();
                                      }
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(10),
                                    elevation: 5,
                                    shadowColor: Colors.black,
                                  ),

                                  child: const Icon(Icons.remove, size: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert, color: Colors.black),
                              iconSize: 24,
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8, right: 2),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "$_price\$",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                height: 165,
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [

                    SizedBox(
                      width: 130,
                      height: double.infinity,
                      child: Image.asset(
                        "assets/images/tshirt1.jpg",
                        fit: BoxFit.cover,
                        height: double.infinity,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Product",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Row(
                              children: [

                                RichText(
                                    text:const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Color: ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Black",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                ),
                                const SizedBox(width: 8,),
                                RichText(
                                    text:const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "size: ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "L",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                ),

                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: (){
                                    setState(() {
                                      _counter1++;
                                      _price1=25*_counter1;
                                      _updateTotalPrice();
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(10),
                                    elevation: 5,
                                    shadowColor: Colors.black,
                                  ),
                                  child: const Icon(Icons.add, size: 15),
                                ),
                                const SizedBox(width: 1),
                                Text("$_counter1"),
                                const SizedBox(width: 1),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (_counter1 > 0) {
                                        _counter1--;
                                        _price1 = (50* _counter1);
                                        _updateTotalPrice();
                                      }
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(10),
                                    elevation: 5,
                                    shadowColor: Colors.black,
                                  ),

                                  child: const Icon(Icons.remove, size: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert, color: Colors.black),
                              iconSize: 24,
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8, right: 2),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "$_price1\$",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                height: 165,
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [

                    SizedBox(
                      width: 130,
                      height: double.infinity,
                      child: Image.asset(
                        "assets/images/tshirt1.jpg",
                        fit: BoxFit.cover,
                        height: double.infinity,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Product",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Row(
                              children: [

                                RichText(
                                    text:const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Color: ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Black",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                ),
                                const SizedBox(width: 8,),
                                RichText(
                                    text:const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "size: ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "L",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                ),

                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: (){
                                    setState(() {
                                      _counter2++;
                                      _price2=20*_counter2;
                                      _updateTotalPrice();
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(10),
                                    elevation: 5,
                                    shadowColor: Colors.black,
                                  ),
                                  child: const Icon(Icons.add, size: 15),
                                ),
                                const SizedBox(width: 1),
                                Text("$_counter2"),
                                const SizedBox(width: 1),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (_counter2 > 0) {
                                        _counter2--;
                                        _price2 = (50* _counter2);
                                        _updateTotalPrice();
                                      }
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(10),
                                    elevation: 5,
                                    shadowColor: Colors.black,
                                  ),

                                  child: const Icon(Icons.remove, size: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert, color: Colors.black),
                              iconSize: 24,
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8, right: 2),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "$_price2\$",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Total Amount",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      ),
                      Text(
                        "$_totalPrice\$",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Congratulation'),
                      ),
                    );
                  },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16), backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ), child: const Text("CHECK OUT",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _counter.dispose();
    _price.dispose();
    _totalPrice.dispose();
    super.dispose();
  }

}

extension on int {
  void dispose() {}
}
