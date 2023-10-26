class Course {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;

  Course({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    author: "124210008",
    completedPercentage: .75,
    name: "Talitha Nur Rahma",
    thumbnail: "assets/icons/flutter.jpg",
  ),
  Course(
    author: "124210012",
    completedPercentage: .60,
    name: "Relvio Kyrie Matchura",
    thumbnail: "assets/icons/react.jpg",
  ),
  Course(
    author: "124210028",
    completedPercentage: .75,
    name: "Prita Isworo Wunge",
    thumbnail: "assets/icons/node.png",
  ),
];
