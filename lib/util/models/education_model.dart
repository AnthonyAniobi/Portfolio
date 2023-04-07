class Education {
  final String school;
  final String course;
  final String degree;
  final String grade;
  final DateTime startDate;
  final DateTime? endDate;
  final bool isOnline;

  Education({
    required this.school,
    required this.course,
    required this.degree,
    required this.grade,
    required this.startDate,
    this.endDate,
    this.isOnline = false,
  });

  static List<Education> all() => [
        Education(
            school: "University of Nigeria Nsukka",
            course: "Engineering",
            degree: "Bachelor of Engineering",
            grade: "4.32/5",
            startDate: DateTime(2019)),
        Education(
            school: "University of Illinois",
            course: "Programming in C++",
            degree: "Specialization Course",
            grade: "98%",
            isOnline: true,
            startDate: DateTime(2021)),
      ];
}
