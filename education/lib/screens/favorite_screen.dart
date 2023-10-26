import 'package:education_app/models/situs_rek.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Favorit extends StatelessWidget {
    final List<SiteRecommendation> favoriteSitusList =
    siteRecommendations.where((place) => place.isFavorite).toList();

  void _launchURL(String url) async {
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (error) {
      print('Error launching URL: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Situs Favorit'),
        backgroundColor: Color(0xFF4E0189),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: favoriteSitusList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(5, 8, 0, 0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(favoriteSitusList[index].imageUrl),
                backgroundColor: Colors.transparent,
              ),
              title: InkWell(
                onTap: () {
                  _launchURL(favoriteSitusList[index].url);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(favoriteSitusList[index].name),
                          Text(
                            favoriteSitusList[index].url,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}