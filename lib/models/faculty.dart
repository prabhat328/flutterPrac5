class Faculty {
  final String name;
  final String designation;
  final String photo;

  Faculty({
    required this.name,
    required this.designation,
    required this.photo,
  });

  static List<Faculty> get sampleFacultyList => [
        Faculty(
          name: 'Prof. Dr. Dhananjay Kalbande',
          designation: 'Head of Department',
          photo:
              'https://mca.spit.ac.in/wp-content/uploads/2023/04/dr-dhananjay-kalbande.jpg',
        ),
        Faculty(
          name: 'Prof. Harshil Kanakia',
          designation: 'Assistant Professor',
          photo: 'https://mca.spit.ac.in/wp-content/uploads/2022/12/HK.png',
        ),
        Faculty(
          name: 'Prof. Sakina Shaikh',
          designation: 'Assistant Professor',
          photo: 'https://mca.spit.ac.in/wp-content/uploads/2022/12/SK.png',
        ),
        Faculty(
          name: 'Prof. Pallavi Thakur',
          designation: 'Assistant Professor',
          photo: 'https://mca.spit.ac.in/wp-content/uploads/2022/12/PT.png',
        ),
        Faculty(
          name: 'Prof. Nikhita Mangaonkar',
          designation: 'Assistant Professor',
          photo: 'https://mca.spit.ac.in/wp-content/uploads/2022/12/NM.png',
        ),
      ];
}
