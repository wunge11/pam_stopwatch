class SiteRecommendation {
  String id;
  String name;
  String description;
  String imageUrl;
  String url;
  bool isFavorite;

  SiteRecommendation({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.url,
    required this.isFavorite,
  });
}

var siteRecommendations = [
  SiteRecommendation(
    id: "site-youtube",
    name: "YouTube",
    description:
    "YouTube adalah platform berbagi video yang memungkinkan pengguna mengunggah, menonton, dan berinteraksi dengan berbagai jenis video. Anda dapat menemukan konten hiburan, tutorial, musik, dan banyak lagi di sini.",
    imageUrl:
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-png%2Fyoutube-logo&psig=AOvVaw2pc-u1OtOpzTE2tzJt32gS&ust=1698380032791000&source=images&cd=vfe&opi=89978449&ved=0CBMQjhxqFwoTCOCmnubskoIDFQAAAAAdAAAAABAE", // Ganti URL gambar sesuai kebutuhan
    url: "https://www.youtube.com/",
    isFavorite: false,
  ),
  SiteRecommendation(
    id: "site-twitter",
    name: "Twitter",
    description:
    "Twitter adalah platform media sosial yang memungkinkan pengguna untuk mengirim dan membaca pesan singkat yang disebut tweet. Anda dapat mengikuti berita terkini, berinteraksi dengan pengguna lain, dan berbagi pemikiran Anda di Twitter.",
    imageUrl:
    "https://example.com/images/twitter.png", // Ganti URL gambar sesuai kebutuhan
    url: "https://twitter.com/",
    isFavorite: false,
  ),
  SiteRecommendation(
    id: "site-cnb",
    name: "CNN",
    description:
    "CNN (Cable News Network) adalah jaringan berita internasional yang menyediakan liputan berita terkini dari seluruh dunia. Anda dapat membaca berita, melihat video, dan mengikuti perkembangan berita terkini di CNN.",
    imageUrl:
    "https://example.com/images/cnn.png", // Ganti URL gambar sesuai kebutuhan
    url: "https://edition.cnn.com/",
    isFavorite: false,
  ),
  SiteRecommendation(
    id: "site-facebook",
    name: "Facebook",
    description:
    "Facebook adalah platform media sosial yang memungkinkan pengguna untuk terhubung dengan teman dan keluarga, membagikan konten, dan berinteraksi dengan berbagai komunitas online. Anda juga dapat mengiklankan bisnis Anda di Facebook.",
    imageUrl:
    "https://example.com/images/facebook.png", // Ganti URL gambar sesuai kebutuhan
    url: "https://www.facebook.com/",
    isFavorite: false,
  ),
  SiteRecommendation(
    id: "site-instagram",
    name: "Instagram",
    description:
    "Instagram adalah platform media sosial berbagi foto dan video yang populer. Anda dapat mengunggah foto dan video, mengikuti akun lain, dan menjelajahi berbagai konten visual di Instagram.",
    imageUrl:
    "https://example.com/images/instagram.png", // Ganti URL gambar sesuai kebutuhan
    url: "https://www.instagram.com/",
    isFavorite: false,
  ),
  SiteRecommendation(
    id: "site-linkedin",
    name: "LinkedIn",
    description:
    "LinkedIn adalah platform media sosial profesional yang memungkinkan pengguna untuk terhubung dengan profesional lain, membangun jejaring bisnis, dan mencari peluang karir. Anda dapat membangun profil profesional Anda di LinkedIn.",
    imageUrl:
    "https://example.com/images/linkedin.png", // Ganti URL gambar sesuai kebutuhan
    url: "https://www.linkedin.com/",
    isFavorite: false,
  ),
  // Tambahkan rekomendasi situs lainnya sesuai kebutuhan
];
