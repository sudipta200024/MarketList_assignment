import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

  int _totalPrice = 0; // Create a variable for the total price

  void _updateTotalPrice() {
    setState(() {
      _totalPrice = _price + _price1 + _price2; // Sum the individual prices
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Padding(
          padding: const EdgeInsets.all(10),
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
                      color: Colors.black.withOpacity(0.08), // Shadow color with opacity
                      spreadRadius: 2, // Spread the shadow
                      blurRadius: 5,   // Soften the shadow
                      offset: Offset(0, 3), // Move shadow down and to the right
                    ),
                  ],
                ),
                height: 165,
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    // Image container
                    Container(
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
                        padding: EdgeInsets.all(8),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
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
                                      text:TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Color: ", // This part will be gray
                                            style: TextStyle(
                                              color: Colors.grey, // Gray color for "Color: "
                                              fontSize: 16, // Adjust font size if needed
                                            ),
                                          ),
                                          TextSpan(
                                            text: "Black", // This part will be darker black
                                            style: TextStyle(
                                              color: Colors.black87, // Darker black for "Black"
                                              fontSize: 16, // Same font size
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                                  SizedBox(width: 8,),
                                  RichText(
                                      text:TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "size: ", // This part will be gray
                                            style: TextStyle(
                                              color: Colors.grey, // Gray color for "Color: "
                                              fontSize: 16, // Adjust font size if needed
                                            ),
                                          ),
                                          TextSpan(
                                            text: "L", // This part will be darker black
                                            style: TextStyle(
                                              color: Colors.black87, // Darker black for "Black"
                                              fontSize: 16, // Same font size
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 16),
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
                                    child: Icon(Icons.add, size: 15),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(10),
                                      elevation: 5, // Add shadow (higher value for more shadow)
                                      shadowColor: Colors.black, // You can set the shadow color
                                    ),
                                  ),
                                  SizedBox(width: 1),
                                  Text("$_counter"),
                                  SizedBox(width: 1),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        if (_counter > 0) {
                                          _counter--;
                                          _price = (50* _counter);
                                          _updateTotalPrice();// Ensure _price is an integer
                                        }
                                      });
                                    },

                                    child: Icon(Icons.remove, size: 15),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(10),
                                      elevation: 5, // Add shadow (higher value for more shadow)
                                      shadowColor: Colors.black, // You can set the shadow color
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert, color: Colors.black),
                                iconSize: 24,
                                padding: EdgeInsets.zero,
                              ),
                            ),
                            Spacer(), // Pushes the price text to the bottom
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8, right: 2),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "$_price\$",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                      color: Colors.black.withOpacity(0.08), // Shadow color with opacity
                      spreadRadius: 2, // Spread the shadow
                      blurRadius: 5,   // Soften the shadow
                      offset: Offset(0, 3), // Move shadow down and to the right
                    ),
                  ],
                ),
                height: 165,
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    // Image container
                    Container(
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
                        padding: EdgeInsets.all(8),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
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
                                      text:TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Color: ", // This part will be gray
                                            style: TextStyle(
                                              color: Colors.grey, // Gray color for "Color: "
                                              fontSize: 16, // Adjust font size if needed
                                            ),
                                          ),
                                          TextSpan(
                                            text: "Black", // This part will be darker black
                                            style: TextStyle(
                                              color: Colors.black87, // Darker black for "Black"
                                              fontSize: 16, // Same font size
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                                  SizedBox(width: 8,),
                                  RichText(
                                      text:TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "size: ", // This part will be gray
                                            style: TextStyle(
                                              color: Colors.grey, // Gray color for "Color: "
                                              fontSize: 16, // Adjust font size if needed
                                            ),
                                          ),
                                          TextSpan(
                                            text: "L", // This part will be darker black
                                            style: TextStyle(
                                              color: Colors.black87, // Darker black for "Black"
                                              fontSize: 16, // Same font size
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 16),
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
                                    child: Icon(Icons.add, size: 15),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(10),
                                      elevation: 5, // Add shadow (higher value for more shadow)
                                      shadowColor: Colors.black, // You can set the shadow color
                                    ),
                                  ),
                                  SizedBox(width: 1),
                                  Text("$_counter1"),
                                  SizedBox(width: 1),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        if (_counter1 > 0) {
                                          _counter1--;
                                          _price1 = (50* _counter1);
                                          _updateTotalPrice();// Ensure _price is an integer
                                        }
                                      });
                                    },

                                    child: Icon(Icons.remove, size: 15),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(10),
                                      elevation: 5, // Add shadow (higher value for more shadow)
                                      shadowColor: Colors.black, // You can set the shadow color
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert, color: Colors.black),
                                iconSize: 24,
                                padding: EdgeInsets.zero,
                              ),
                            ),
                            Spacer(), // Pushes the price text to the bottom
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8, right: 2),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "$_price1\$",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                      color: Colors.black.withOpacity(0.08), // Shadow color with opacity
                      spreadRadius: 2, // Spread the shadow
                      blurRadius: 5,   // Soften the shadow
                      offset: Offset(0, 3), // Move shadow down and to the right
                    ),
                  ],
                ),
                height: 165,
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    // Image container
                    Container(
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
                        padding: EdgeInsets.all(8),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
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
                                      text:TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Color: ", // This part will be gray
                                            style: TextStyle(
                                              color: Colors.grey, // Gray color for "Color: "
                                              fontSize: 16, // Adjust font size if needed
                                            ),
                                          ),
                                          TextSpan(
                                            text: "Black", // This part will be darker black
                                            style: TextStyle(
                                              color: Colors.black87, // Darker black for "Black"
                                              fontSize: 16, // Same font size
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                                  SizedBox(width: 8,),
                                  RichText(
                                      text:TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "size: ", // This part will be gray
                                            style: TextStyle(
                                              color: Colors.grey, // Gray color for "Color: "
                                              fontSize: 16, // Adjust font size if needed
                                            ),
                                          ),
                                          TextSpan(
                                            text: "L", // This part will be darker black
                                            style: TextStyle(
                                              color: Colors.black87, // Darker black for "Black"
                                              fontSize: 16, // Same font size
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 16),
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
                                    child: Icon(Icons.add, size: 15),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(10),
                                      elevation: 5, // Add shadow (higher value for more shadow)
                                      shadowColor: Colors.black, // You can set the shadow color
                                    ),
                                  ),
                                  SizedBox(width: 1),
                                  Text("$_counter2"),
                                  SizedBox(width: 1),
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

                                    child: Icon(Icons.remove, size: 15),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(10),
                                      elevation: 5,
                                      shadowColor: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert, color: Colors.black),
                                iconSize: 24,
                                padding: EdgeInsets.zero,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8, right: 2),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "$_price2\$",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Amount",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      ),
                      Text(
                        "$_totalPrice\$",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('congratulatin'),
                      ),
                    );
                  }, child: Text("CHECK OUT",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16), backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),)
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
