import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart'; // เพิ่มแพ็คเกจ google_fonts

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final Map<String, String> searchLinks = {
    'N15 Technology': 'https://n15technology.com/',
    'มูลนิธิกระจกเงา': 'https://www.mirror.or.th/',
    'Green Road': 'https://greenroadenterprise.com/',
    'โครงการร้านปันกัน': 'https://pankansociety.com/',
    'ห้องได้บุญ': 'https://redcross.or.th/tag/%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B8%87%E0%B9%84%E0%B8%94%E0%B9%89%E0%B8%9A%E0%B8%B8%E0%B8%8D/',
    'มูลนิธิบ้านนกขมิ้น': 'https://www.baannokkamin.org/',
    'มูลนิธิสวนแก้ว': 'https://www.kanlayano.org/home/info/info_donation.php',
    'YOUเทิร์น': 'https://sustainability.pttgcgroup.com/th/projects/8/%E0%B9%80%E0%B8%97%E0%B8%B4%E0%B8%A3%E0%B9%8C%E0%B8%99%E0%B8%8A%E0%B8%B5%E0%B8%A7%E0%B8%B4%E0%B8%95%E0%B9%83%E0%B8%AB%E0%B9%89%E0%B8%82%E0%B8%A2%E0%B8%B0%E0%B8%9E%E0%B8%A5%E0%B8%B2%E0%B8%AA%E0%B8%95%E0%B8%B4%E0%B8%81%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B9%81%E0%B8%A5%E0%B9%89%E0%B8%A7%E0%B8%81%E0%B8%A5%E0%B8%B1%E0%B8%9A%E0%B8%A1%E0%B8%B2%E0%B8%AA%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%87%E0%B8%84%E0%B8%B8%E0%B8%93%E0%B8%84%E0%B9%88%E0%B8%B2-%E0%B8%81%E0%B8%B1%E0%B8%9A-gc-you%E0%B9%80%E0%B8%97%E0%B8%B4%E0%B8%A3%E0%B9%8C%E0%B8%99',
    'ปันสุข กับปันกัน': 'https://pankansociety.com/',
    'ท้าไม่ทิ้ง by เขาช่อง': 'https://www.khaoshong.com/onlinestore/2022/08/08/%E0%B8%97%E0%B9%89%E0%B8%B2%E0%B9%84%E0%B8%A1%E0%B9%88%E0%B8%97%E0%B8%B4%E0%B9%89%E0%B8%87%E0%B8%81%E0%B8%B1%E0%B8%9A%E0%B8%81%E0%B8%B2%E0%B9%81%E0%B8%9F%E0%B9%80%E0%B8%82%E0%B8%B2%E0%B8%8A%E0%B9%88/',
    'ธรรมธุรกิจ': 'https://salepage.thamturakit.com/'
  };

  List<String> suggestions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: GoogleFonts.ibmPlexSansThai(
                      // ใช้ IBM Plex Sans Thai
                      textStyle: TextStyle(color: Colors.grey),
                    ),
                    border: InputBorder.none,
                  ),
                  style: GoogleFonts.ibmPlexSansThai(
                    // ใช้ IBM Plex Sans Thai
                    textStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                  ),
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      setState(() {
                        suggestions = searchLinks.keys
                            .where((key) =>
                            key.toLowerCase().contains(value.toLowerCase()))
                            .toList();
                      });
                    } else {
                      setState(() {
                        suggestions = [];
                      });
                    }
                  },
                ),
              ),
            ),
            IconButton(
              icon: Image.asset('assets/images/search.png'), // เปลี่ยนไอคอนเป็นรูป search.png
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(suggestions[index]),
            onTap: () {
              _launchURL(searchLinks[suggestions[index]]);
            },
          );
        },
      ),
    );
  }

  void _launchURL(String? url) async {
    if (url != null) {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }
}
