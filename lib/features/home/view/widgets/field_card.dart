import 'package:flutter/material.dart';
import '../../../../core/theme/constants.dart';
import '../../model/lapangan_model.dart';
import '../pages/details_page.dart';

class FieldCard extends StatelessWidget {
  final LapanganModel lapangan;
  const FieldCard({super.key, required this.lapangan});

  @override
  Widget build(BuildContext context) {
     return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(lapangan: lapangan,),
          ),
        );
      },
      child: Container(
        width: 141,
        height: 170,
        margin: EdgeInsets.only(left: defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: const Offset(0, 9),
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 141,
              height: 126,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                 image: AssetImage(lapangan.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lapangan.name,
                      style: whiteTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      lapangan.description,
                      style: lightTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
