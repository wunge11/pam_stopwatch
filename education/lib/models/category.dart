class Category {
  String thumbnail;
  String name;
  int noOfCourses;
  String link;

  Category({
    required this.name,
    required this.noOfCourses,
    required this.thumbnail,
    required this.link
  });
}

List<Category> categoryList = [
  Category(
    name: 'Anggota Kelompok',
    noOfCourses: 55,
    thumbnail: 'assets/icons/gambar1.png',
    link : '/kelompok',

  ),
  Category(
    name: 'Stopwatch',
    noOfCourses: 20,
    thumbnail: 'assets/icons/gambar2.png',
    link : '/stopwatch',
  ),
  Category(
    name: 'Daftar Rekomendasi',
    noOfCourses: 16,
    thumbnail: 'assets/icons/gambar3.png',
    link : '/rekomen',
  ),
  Category(
    name: 'Favorite',
    noOfCourses: 25,
    thumbnail: 'assets/icons/gambar4.png',
    link : '/fav',
  ),
];
