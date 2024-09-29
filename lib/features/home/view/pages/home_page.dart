import 'package:client/features/home/view/pages/details_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/theme/constants.dart';
import '../../model/lapangan_model.dart';
import '../../viewmodel/home_viewmodel.dart';
import '../widgets/field_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Fetching lapangan data
    context.read<HomePageViewModel>().fetchLapangan();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _topBar(),
              _searchSection(),
              _contentSection(context),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topBar() {
    return Container(
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            margin: const EdgeInsets.only(right: 8),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image_profile.png"),
              ),
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, User",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.location_on, size: 15),
                  SizedBox(width: 4),
                  Text(
                    "Pokhara-16",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          const Icon(Icons.notifications),
        ],
      ),
    );
  }

  Widget _searchSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Where would you like\nto play futsal?",
            style: TextStyle(
              fontSize: 24,
              fontWeight: semiBold,
            )
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Search futsal fields...",
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _contentSection(BuildContext context) {
    return Consumer<HomePageViewModel>(
      builder: (context, model, child) {
        if (model.lapanganList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionTitle("Recently Booked"),
            const SizedBox(height: 19,),
            _fieldCardList(model.lapanganList),
            _sectionTitle("Nearby Fields"),
            const SizedBox(height: 19,),
            _fieldCardList(model.lapanganList),
          ],
        );
      },
    );
  }

  Widget _sectionTitle(String title) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      child: Text(
        title,
        style: whiteTextStyle.copyWith(
          fontWeight: semiBold,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _fieldCardList(List<LapanganModel> lapanganList) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: lapanganList.map((LapanganModel lapangan) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(lapangan:lapangan,),
                ),
              );
            },
            child: FieldCard(lapangan: lapangan),
          );
        }).toList(),
      ),
    );
  }
}

// class FieldCard extends StatelessWidget {
//   final LapanganModel lapangan;
//   const FieldCard({super.key, required this.lapangan});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       width: 150,
//       child: Column(
//         children: [
//           Image.asset(lapangan.imageUrl),
//           const SizedBox(height: 8),
//           Text(lapangan.name,
//               style: const TextStyle(fontWeight: FontWeight.bold)),
//           Text("Rs ${lapangan.price} per hour"),
//         ],
//       ),
//     );
//   }
// }
