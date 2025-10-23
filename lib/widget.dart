import 'package:faisal_dream/Widget/citycard1.dart';
import 'package:flutter/material.dart';



class OWidget extends StatelessWidget {
  const OWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CityCard1(img: 'https://media.istockphoto.com/id/1347665170/photo/london-at-sunset.jpg?s=612x612&w=0&k=20&c=MdiIzSNKvP8Ct6fdgdV3J4FVcfsfzQjMb6swe2ybY6I=', title: 'London', rating: '⭐ 4.8'),
            CityCard1(img: 'https://media.istockphoto.com/id/1056699672/photo/tetulia-jame-masjid-at-tala-satkhira-bangladesh.jpg?s=2048x2048&w=is&k=20&c=dXcVNItu8yQHcqGULMzrMTlINpmDc1l-doCl23NA4lw=', title: 'Bangladesh', rating: '⭐ 4.0'),
            CityCard1(img: 'https://media.istockphoto.com/id/1396081944/photo/thai-traditional-wooden-longtail-boat-and-beautiful-beach-in-phuket-province-thailand.jpg?s=2048x2048&w=is&k=20&c=e51nsROMDsP3bd3S071q2zPp2EnGNcPKOxRQLMWUyD4=', title: 'Thailand', rating: '⭐ 4.5'),
            CityCard1(img: 'https://media.istockphoto.com/id/1572334424/photo/dubai.jpg?s=2048x2048&w=is&k=20&c=nS0OaH9iYDvw6ss71Dh95Rqg_cqj0O4zbAsYJjFc_i0=', title: 'Dubai', rating: '⭐ 4.6'),
        
          ],
        ),
      ),
    ),
    );
  }
}
