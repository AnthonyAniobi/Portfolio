import 'package:portfolio/util/app_enums.dart';
import 'package:portfolio/util/models/image_link_model.dart';

class Experience {
  final String company;
  final String job;
  final List<String> description;
  final String url;
  final DateTime startDate;
  final DateTime? endDate;
  final bool currentlyWorking;
  final List<ImageLinkModel> links;

  Experience({
    required this.company,
    required this.job,
    required this.description,
    required this.url,
    required this.startDate,
    required this.links,
    this.endDate,
    this.currentlyWorking = false,
  });

  static List<Experience> all() => [
        Experience(
            company: 'Hala',
            job: 'Flutter Mobile Developer',
            description: ['Built mobile application'],
            url: '',
            links: [
              ImageLinkModel(
                  appLink: 'https://www.google.com',
                  appName: 'Hala',
                  location: DeployedLocation.playstore),
              ImageLinkModel(
                  appLink: '',
                  appName: 'Hala',
                  location: DeployedLocation.appstore),
            ],
            currentlyWorking: true,
            startDate: DateTime(2022, 2)),
        Experience(
            company: 'Devtouchless',
            job: 'Mobile Developer',
            description: ['Built mobile application'],
            url: '',
            links: [
              ImageLinkModel(
                  appLink: '0',
                  appName: 'Star Conference',
                  location: DeployedLocation.preview),
            ],
            currentlyWorking: true,
            startDate: DateTime(2022, 2)),
        Experience(
            company: '',
            job: 'Senior Mobile Developer',
            description: ['Built mobile application'],
            url: '',
            links: [
              ImageLinkModel(
                  appLink: '1',
                  appName: 'InsuranceApp',
                  location: DeployedLocation.preview),
            ],
            currentlyWorking: true,
            startDate: DateTime(2022, 2)),
        Experience(
            company: 'Forrest and Finch',
            job: 'Mobile Developer',
            description: ['Built mobile application'],
            url: '',
            links: [
              ImageLinkModel(
                  appLink: '',
                  appName: 'Gatepass',
                  location: DeployedLocation.playstore),
              ImageLinkModel(
                  appLink: '2',
                  appName: 'Scoutbet',
                  location: DeployedLocation.preview),
              ImageLinkModel(
                  appLink: '3',
                  appName: 'Tenant App',
                  location: DeployedLocation.preview),
            ],
            currentlyWorking: true,
            startDate: DateTime(2022, 2)),
        Experience(
          company: 'Switch',
          job: 'Chief Technology officer',
          description: ['Built mobile and backend services for company'],
          url: '',
          links: [],
          currentlyWorking: false,
          startDate: DateTime(2020, 12),
          endDate: DateTime(2021, 6),
        ),
        Experience(
            company: 'Sisakest Groups',
            job: 'Programming Teacher',
            description: [
              'Taught a class Programming fundamentals and practical programming'
            ],
            url: '',
            links: [],
            currentlyWorking: false,
            startDate: DateTime(2020, 3),
            endDate: DateTime(2020, 8)),
      ];
}
