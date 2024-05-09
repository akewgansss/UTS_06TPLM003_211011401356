import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'SHOES',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          actions: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'), // Ganti dengan path foto profil Anda
            ),
            SizedBox(width: 16), // Jarak antara foto profil dan tepi kanan
          ],
        ),
        body: ListView(
          children: [
            buildShoeItem(
              title: 'Nike SB Zoom Blazer',
              subtitle: 'Mid Premium',
              price: '\$77',
              imageUrl: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/23c5846f-40e4-48e9-b05d-737b97e90fec/sb-zoom-blazer-mid-skate-shoes-LVGq5c.png',
            ),
            buildShoeItem(
              title: 'Nike Pegasus Trail 4',
              subtitle: "Custom Women's Trail-Running Shoes",
              price: '\$166',
              imageUrl: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/d451171a-254f-46bb-8788-aaca6a214980/custom-pegasus-trail-4-by-you.png',
            ),
            buildShoeItem(
              title: 'Nike Air Max 1 Premium',
              subtitle: "Men's Shoes",
              price: '\$155',
              imageUrl: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/c00d92bc-b95b-498a-9a7e-0a35863b8a4e/air-max-1-shoes-9JTw1z.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildShoeItem({
    required String title,
    required String subtitle,
    required String price,
    required String imageUrl,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align elements to the right
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(width: 16),
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 50, // Adjust the radius for larger image
            ),
          ],
        ),
      ),
    );
  }
}