import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: size.width / 2,
                      height: size.height * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        boxShadow: [BoxShadow(offset: Offset(4, 4))],
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/234641892_1934125243415299_4663317802053806720_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeF7Wxtb-pzUkxIGUNpC8fBMD_mDip3Cyu4P-YOKncLK7pyr1AfR72-0BJE9UIxN--bRAg2PuRINB5DWG8izW2Te&_nc_ohc=efKdhtwv4K8AX-_COJs&_nc_ht=scontent.fcai1-2.fna&oh=1437eb8a9fa3b6906e6f024d4b991933&oe=613C857C'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.red,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("halemhamzatt"),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: size.width / 2,
                      height: size.height * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        boxShadow: [BoxShadow(offset: Offset(4, 4))],
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/151302916_2526024984366934_4606042628157522775_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEqC9HNT3DXwy41G9z9xFGAVnjmGAyUhxlWeOYYDJSHGSjGBJAd6wXvyaOfJGsl7Cqjxkl2M8Ky2_KE6eTlYnRX&_nc_ohc=UVdnd1vcr7AAX9O1y95&_nc_ht=scontent.fcai1-2.fna&oh=d0ea94c0583359beb72325b405da00ad&oe=613DFD66'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.red,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("halemhamzatt"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
