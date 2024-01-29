import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anshu Flutter App'),
        ),
        body: PlainPage(),
      ),
    );
  }
}

class PlainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFDAB9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'images/pexels-godson-bright-962464.jpg',
                fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Kerala Backwaters',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green,
              decoration: TextDecoration.underline,
              fontFamily: 'Quintessential',
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Kerala, aptly known as "God\'s Own Country," is a picturesque gem in southwestern India. This enchanting state boasts pristine beaches, lush landscapes, and a network of backwaters. Nestled between the Arabian Sea and the Western Ghats, Kerala offers a unique blend of tropical beauty, vibrant culture, and diverse wildlife. From the iconic houseboats of Alleppey to the aromatic spice plantations, visitors are treated to an unforgettable journey through a land where nature and tradition harmoniously coexist.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'Quintessential',
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              // Add your booking logic here
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            ),
            child: Text(
              'Book Now',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20), // Add some space below the button
        ],
      ),
    );
  }
}
