import 'package:flutter/material.dart';

class MusicListPage extends StatefulWidget {
  const MusicListPage({super.key});

  @override
  State<MusicListPage> createState() => _MusicListPageState();
}

class _MusicListPageState extends State<MusicListPage> {
  List<Map<String, dynamic>> feedItems = [
    {
      "name": "Kossi ADANOU",
      "title": "The Neighborhood",
      "profile":
          "https://storage.googleapis.com/makifaa_public/tw550_jeune-swag.webp",
      "is_audio": true
    },
    {
      "name": "Komi ADANOU",
      "title": "Lewis Capaldi",
      "profile":
          "https://variety.com/wp-content/uploads/2021/09/Drake-publicity3-2021.jpg",
      "is_audio": false
    },
    {
      "name": "Sefako Gnamavo",
      "title": "The Weekend",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    },
    {
      "name": "Happier Than Ever",
      "title": "Billie Eiish",
      "profile":
          "https://i0.wp.com/dubawa.org/wp-content/uploads/2021/01/sarkodie.jpg",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat On",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat On",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat On",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "The Constant",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat On",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "More Hitz",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    }
  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      child: ListView.separated(
          itemBuilder: (BuildContext context, int position) {
            Map<String, dynamic> item = feedItems[position];

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(
                      item["is_audio"] ? 40 : 12),
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: Stack(
                      children: [
                        Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Image.network(
                              item["profile"],
                              fit: BoxFit.cover,
                            )),
                        Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: item["is_audio"]
                                ? const Icon(
                                    Icons.play_arrow,
                                    size: 40,
                                    color: Colors.white,
                                  )
                                : Container())
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: RichText(
                      text: TextSpan(
                        text: "${item["name"]}\n",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text: item["title"],
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 14)),
                        ],
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int pos) {
            return const SizedBox(
              height: 16,
            );
          },
          itemCount: feedItems.length),
    );
  }
}
