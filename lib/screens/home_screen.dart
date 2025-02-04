import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
              16.0, 70.0, 16.0, 70.0), // Add padding for better UI
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FirstRowWidget(),
              const SizedBox(height: 40), // Space between rows
              KycCardWidget(),
              const SizedBox(height: 40),
              const Text("Features", style: TextStyle(fontSize: 25)),
              FeaturesCardWidget(),
              const SizedBox(height: 40),
              Text("DID YOU KNOW?", style: TextStyle(fontSize: 20)),
              Text("Know More", style: TextStyle(color: Colors.green)),
              const SizedBox(height: 15),
              const AboutBloombergCardWidget(),
              const SizedBox(height: 40),
              const NuminxFiguresWidget(),
              const SizedBox(height: 40),
              const FaqWidget(),
              const SizedBox(height: 40),
              const ContactWidget()
            ],
          ),
        ),
      ),
    );
  }
}

// ✅ First Row with Avatar and Share Button
class FirstRowWidget extends StatelessWidget {
  const FirstRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Circular Avatar with Account Icon
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue[100],
          child: Icon(Icons.person, size: 30, color: Colors.blue),
        ),

        // Share and earn button
        ElevatedButton.icon(
          onPressed: () {
            // add functionality
          },
          icon: Icon(Icons.people),
          label: Text("Share & Earn"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        )
      ],
    );
  }
}

// ✅ Second Row with Card and Button
class KycCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Row 1 in Card
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Step 1/3",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10),

            // Row 2 in Card
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Let's get you verified",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Icon(Icons.arrow_circle_right, color: Colors.blue),
              ],
            ),
            SizedBox(height: 10),

            // Last Row with Button
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add button functionality here
                    },
                    child: Text("Complete KYC"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ✅ Third Row with Horizontally Scrollable Cards
class FeaturesCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Enable horizontal scrolling
      child: Row(
        children: [
          // Card 1
          CustomCard(),
          SizedBox(width: 16), // Space between cards

          // Card 2
          CustomCard(),
          SizedBox(width: 16),

          // Card 3
          CustomCard(),
          SizedBox(width: 16),

          // Add more cards if needed
        ],
      ),
    );
  }
}

// ✅ Custom Card with 4 Rows inside
class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row 1 in Card
            Row(
              children: [
                Icon(Icons.lightbulb, color: Colors.blue),
                Text("ON SPOTLIGHT", style: TextStyle(fontSize: 14)),
              ],
            ),
            SizedBox(height: 8),

            // Row 2 in Card
            Row(
              children: [
                Text("Bloomberg Galaxy Crypto Index",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 8),

            // Row 3 in Card
            Row(
              children: [
                Text("Invest in top cryptos including BTC & ETH",
                    style: TextStyle(fontSize: 12)),
              ],
            ),
            SizedBox(height: 8),

            // Row 4 in Card
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Start With 50", style: TextStyle(fontSize: 14)),
                SizedBox(width: 8),
                Text("Invest Now ->", style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AboutBloombergCardWidget extends StatelessWidget {
  const AboutBloombergCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightGreen, // Start with green
              Colors.transparent, // Fade to transparent
            ],
            begin: Alignment.centerLeft, // Gradient starts from the left
            end: Alignment.centerRight, // Gradient ends at the right
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(16.0),
        child: const Text(
          "The Bloomberg Galaxy Crypto Index is a benchmark designed to measure the performance of the largest crypto asset. You can now invest in it via Numinx",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

class NuminxFiguresWidget extends StatelessWidget {
  const NuminxFiguresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("NUMINX AUM", style: TextStyle(fontSize: 25)),
            Text("View Proof-of-Reserves",
                style: TextStyle(color: Colors.green))
          ],
        ),
        Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row 1 in Card
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("540,590 USD", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Insured at"),
                        Text("Lloyd's of London")
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FaqWidget extends StatelessWidget {
  const FaqWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue, // Solid background color
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Aligns the row to start
        children: [
          Text(
            "Numinx FAQ's",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10), // Spacing between icon and text

          Icon(Icons.arrow_forward_ios, color: Colors.white), // Icon for FAQ

        ],
      ),
    );
  }
}


class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey, // Solid background color
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Spread out the children
        crossAxisAlignment: CrossAxisAlignment.center, // Center align vertically
        children: [
          // Column with two text rows on the left
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Got more questions? Contact Numinx RM",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(height: 8), // Space between text rows
              Text(
                "Relationship Manager: Kunal Sownane",
                style: TextStyle(color: Colors.green, fontSize: 14),
              ),
            ],
          ),
          // WhatsApp icon on the right
          Icon(
            Icons.contact_mail,
            color: Colors.white,
            size: 32, // Icon size
          ),
        ],
      ),
    );
  }
}



// Reusable Row Widget
class RowWidget extends StatelessWidget {
  final String title;
  RowWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.star, color: Colors.blue),
        SizedBox(width: 10),
        Text(title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
