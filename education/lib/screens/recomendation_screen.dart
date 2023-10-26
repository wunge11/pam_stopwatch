import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/situs_rek.dart';
import '../provider/favorite_provider.dart';

class Rekomendasi extends StatefulWidget {
  @override
  _RekomendasiState createState() => _RekomendasiState();
}

class _RekomendasiState extends State<Rekomendasi> {
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

  void _toggleFavorite(int index) {
    setState(() {
      siteRecommendations[index].isFavorite =
      !siteRecommendations[index].isFavorite;
    });
  }

  void _showSnackBar(bool isFavorite, String itemName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isFavorite
              ? '$itemName ditambahkan ke Favorit'
              : '$itemName dihapus dari Favorit',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Daftar Situs Favorit",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: siteRecommendations.length,
        itemBuilder: (context, index) {
          final SiteRecommendation place = siteRecommendations[index];
          return InkWell(
            onTap: () {
              _launchURL(place.url.toString());
            },
            child: Card(
              elevation: 2,
              margin: EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    ClipOval(
                      child: Container(
                        width: 150.0,
                        height: 150.0,
                        color: Colors.blue,
                        child: Image.network(
                          place.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      place.name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _toggleFavorite(index);
                        _showSnackBar(
                            siteRecommendations[index].isFavorite,
                            place.name);
                      },
                      icon: siteRecommendations[index].isFavorite
                          ? const Icon(Icons.favorite, color: Colors.red)
                          : const Icon(Icons.favorite_border),
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
