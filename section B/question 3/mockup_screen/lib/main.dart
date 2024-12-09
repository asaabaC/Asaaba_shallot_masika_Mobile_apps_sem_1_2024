import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug mode banner
      title: 'Mockup Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MockupScreen(),
    );
  }
}

class MockupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Removed the AppBar
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Custom top bar with left arrow, "Details", and heart icon
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context); // Navigate back when the arrow is pressed
                  },
                ),
                Text(
                  'Details',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border), // Favorite icon
                  onPressed: () {
                    // Add favorite logic here
                  },
                ),
              ],
            ),
          ),

          // Image at the top (size reduced to fit better)
          Center(
            child: Container(
              height: 250, // Adjusted height to fit the image properly
              width: 250,  // Adjusted width
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/indoor-plants-studio_23-2151022048.jpg'),  // Ensure the image path is correct
                  fit: BoxFit.cover, // Ensure the image fits within the container
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          // Ageratum title and star rating
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Ageratum',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.green), // Changed star color to green
                    Text('4.8 (268 reviews)', style: TextStyle(color: Colors.green)), // Changed rating text color to green
                  ],
                ),
              ],
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Ageratum is a genus of 40 to 60 tropical and warm '
              'temperate flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae. Most '
              'species are native to Central America',
              style: TextStyle(fontSize: 16),
            ),
          ),

          // "Read More" link in green color
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              '...Read More',
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ),

          // Plant details row (size, height, humidity)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Size'),
                    Text(
                      'Medium', 
                      style: TextStyle(fontWeight: FontWeight.bold), // Make "Medium" bold
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Plant'),
                    Text(
                      'Orchid', // Make "Orchid" bold
                      style: TextStyle(fontWeight: FontWeight.bold), 
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[ 
                    Text('Height'),
                    Text('12.6"'), // Added height value
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Humidity'),
                    Text(
                      '82%', 
                      style: TextStyle(fontWeight: FontWeight.bold), // Bold for Humidity
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Price and Add to Cart button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Text(
                  '\$39.99',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Add to cart logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue, // Set button color to sky blue
                  ),
                  child: Text('Add to Cart'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
