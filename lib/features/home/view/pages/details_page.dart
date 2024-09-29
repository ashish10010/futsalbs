import 'package:flutter/material.dart';
import '../../model/lapangan_model.dart';


class DetailsPage extends StatelessWidget {
  final LapanganModel lapangan;

  const DetailsPage({super.key, required this.lapangan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(lapangan.imageUrl),
            const SizedBox(height: 16),
            Text(
              lapangan.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text("Field Size: ${lapangan.fieldtype}"),
            Text("Price/Hour: Rs ${lapangan.price}"),
            const SizedBox(height: 16),
            // ElevatedButton(
            //   onPressed: () {
            //     // Handle booking
            //   },
            //   child: const Text("Book"),
            // ),
          ],
        ),
      ),
    );
  }
}
