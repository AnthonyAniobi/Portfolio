class Experience {
  final String company;
  final String job;
  final String description;
  final String url;
  final DateTime startDate;
  final DateTime? endDate;
  final bool currentlyWorking;

  Experience({
    required this.company,
    required this.job,
    required this.description,
    required this.url,
    required this.startDate,
    this.endDate,
    this.currentlyWorking = false,
  });

  static List<Experience> all() => [
        Experience(
            company: 'Forrest and Finch',
            job: 'Flutter Mobile Developer',
            description: 'Built mobile application',
            url: '',
            currentlyWorking: true,
            startDate: DateTime(2022, 2)),
        Experience(
          company: 'Switch',
          job: 'Chief Technology officer',
          description: 'Built mobile and backend services for company',
          url: '',
          currentlyWorking: false,
          startDate: DateTime(2020, 12),
          endDate: DateTime(2021, 6),
        ),
        Experience(
            company: 'Sisakest Groups',
            job: 'Programming Teacher',
            description:
                'Taught a class Programming fundamentals and practical programming',
            url: '',
            currentlyWorking: false,
            startDate: DateTime(2020, 3),
            endDate: DateTime(2020, 8)),
      ];
}
