class Education {
  final String school;
  final String course;
  final String degree;
  final String grade;
  final String imageUrl;
  final DateTime startDate;
  final DateTime? endDate;
  final String? certificateUrl;

  Education({
    required this.school,
    required this.course,
    required this.degree,
    required this.imageUrl,
    required this.grade,
    required this.startDate,
    this.endDate,
    this.certificateUrl,
  });

  static List<Education> all() => [
        Education(
          school: "University of Nigeria Nsukka",
          course: "Engineering",
          degree: "Bachelor of Engineering",
          grade: "4.32/5",
          imageUrl:
              "https://res.cloudinary.com/aniobi/image/upload/v1681070391/unn_logo_p3hjqj.png",
          startDate: DateTime(2015, 10),
          endDate: DateTime(2021, 7),
        ),
        Education(
            school: "University of London",
            course: "Introduction to computer science and programming",
            degree: "Non Credit Specialization",
            imageUrl:
                "https://res.cloudinary.com/aniobi/image/upload/v1681054405/portfolio/universityoflondon_looic0.jpg",
            grade: "",
            startDate: DateTime(2022, 5),
            endDate: DateTime(2022, 8),
            certificateUrl:
                "https://coursera.org/share/0d1e6254424584f7f2375b9beaa59c8c"),
        Education(
            school: "Amazon Web Services",
            course: "Aws Cloud Practitioner",
            degree: "Non Credit Course",
            imageUrl:
                "https://res.cloudinary.com/aniobi/image/upload/v1681054405/portfolio/awslogo_hhqhna.png",
            grade: "80%",
            startDate: DateTime(2022, 7),
            endDate: DateTime(2022, 8),
            certificateUrl:
                "https://coursera.org/share/12be6326ce5609f72d9b215d2d0761b9"),
        Education(
            school: "Deep learning AI",
            course: "Neural Networks and Deep learning",
            degree: "Non Credit Course",
            imageUrl:
                "https://res.cloudinary.com/aniobi/image/upload/v1681054405/portfolio/deeplearningai_w2i5gl.png",
            grade: "99.7%",
            startDate: DateTime(2021, 6),
            endDate: DateTime(2021, 9),
            certificateUrl:
                "https://coursera.org/share/67406099c8ed6ee5e6e12cf35f7e9316"),
        Education(
            school: "University of Alberta",
            course: "Software Processes and Agile Practices",
            degree: "Non Credit Course",
            imageUrl:
                "https://res.cloudinary.com/aniobi/image/upload/v1681054405/portfolio/universityofalberta_qc865z.png",
            grade: "83.6%",
            startDate: DateTime(2021, 9),
            endDate: DateTime(2021, 11),
            certificateUrl:
                "https://coursera.org/share/ce18e71a0b4de40ea3713d72855ca13e"),
        Education(
            school: "Stanford University",
            course: "Machine Learning",
            degree: "Non Credit Course",
            imageUrl:
                "https://res.cloudinary.com/aniobi/image/upload/v1681054405/portfolio/universityofstanford_j6dqfz.png",
            grade: "91.98%",
            startDate: DateTime(2020, 1),
            endDate: DateTime(2020, 3),
            certificateUrl:
                "https://coursera.org/share/044151892b765b3afb043ab1c4b01a24"),
        Education(
            school: "University of Illinois",
            course: "Object Oriented Datastructures in C++",
            degree: "Non Credit Course",
            imageUrl:
                "https://res.cloudinary.com/aniobi/image/upload/v1681054405/portfolio/universityofillinois_uwx6z9.jpg",
            grade: "100%",
            startDate: DateTime(2019, 10),
            endDate: DateTime(2019, 11),
            certificateUrl:
                "https://coursera.org/share/c6b398da0d65d864223436cb4814750a"),
        Education(
            school: "University of Virginia",
            course: "Design thinking of innovation",
            degree: "Non Credit Specialization",
            imageUrl:
                "https://res.cloudinary.com/aniobi/image/upload/v1681054405/portfolio/universityofvirginia_io8wu9.png",
            grade: "83.33%",
            startDate: DateTime(2021, 9),
            endDate: DateTime(2021, 11),
            certificateUrl:
                "https://coursera.org/share/4e5203a0fa3259faf2695e0ae76619b4"),
      ];
}
