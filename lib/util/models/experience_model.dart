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

  static List<Experience> all = [
    Experience(
        company: 'Forrest and Finch',
        job: 'Mobile Developer',
        description: [
          "Created and maintained code for Gatepass Application for Acres Pro Estate Management Company which has onboarded 8 properties",
          "Converted Web application for Acres Pro Tenant portal into a responsive mobile application.",
          "Worked with a team to create code for Scoutbet a MVP application for Forrest and Finch",
          "Built and managed two CI/CD pipelines for android build to the google playstore console."
        ],
        url: '',
        links: [
          ImageLinkModel(
              appLink:
                  'https://play.google.com/store/apps/details?id=com.acrespro.gatepass',
              appName: 'Gatepass',
              location: DeployedLocation.playstore),
          ImageLinkModel(
              appLink: 'Scoutbet',
              appName: 'Scoutbet',
              location: DeployedLocation.preview),
          // ImageLinkModel(
          //     appLink: '3',
          //     appName: 'Tenant App',
          //     location: DeployedLocation.preview),
        ],
        currentlyWorking: true,
        startDate: DateTime(2022, 2)),
    Experience(
        company: 'Hala',
        job: 'Flutter Mobile Developer',
        description: [
          "Created, Analyzed, and Implemented User Flows, mapped out pathways to ensure a smooth mobile user experience.",
          "Converted UI designs and Prototypes into responsive flutter UI code.",
          "Deployed application to the Google playstore and Apple Appstore",
          "Implement Card payments and UPI payment to mobile application",
        ],
        url: '',
        links: [
          ImageLinkModel(
              appLink:
                  'https://play.google.com/store/apps/details?id=com.halafoods.Hala',
              appName: 'Hala',
              location: DeployedLocation.playstore),
          ImageLinkModel(
              appLink: 'https://apps.apple.com/app/hala-foods/id6446221807',
              appName: 'Hala',
              location: DeployedLocation.appstore),
          ImageLinkModel(
              appLink: 'Hala Stores',
              appName: 'Hala',
              location: DeployedLocation.preview),
        ],
        currentlyWorking: true,
        startDate: DateTime(2022, 2)),
    Experience(
      company: 'Devtouchless',
      job: 'Mobile Developer',
      description: [
        "Converted UI designs and Prototypes into responsive flutter UI code",
        "Built application using Test Driven development methods"
      ],
      url: 'Starconference',
      links: [
        ImageLinkModel(
            appLink: '0',
            appName: 'Star Conference',
            location: DeployedLocation.preview),
      ],
      currentlyWorking: true,
      startDate: DateTime(2022, 11),
      endDate: DateTime(2022, 12),
    ),
    Experience(
        company: 'Tyrell Insurance Company',
        job: 'Senior Mobile Developer',
        description: [
          "Created and maintained code for the MVP app for Insurance App",
          "Created CI/CD pipelines for applications",
          "Provide functional code complying with Dry Principles, and Clean Code",
          "Wrote Unit and Widget tests to identify possible errors in the application",
          "Troubleshoot and debug code from all junior developers to optimize performance"
        ],
        url: '',
        links: [
          ImageLinkModel(
              appLink: 'Insurance App',
              appName: 'Insurance App',
              location: DeployedLocation.preview),
        ],
        currentlyWorking: true,
        startDate: DateTime(2022, 10),
        endDate: DateTime(2022, 11)),
    Experience(
      company: 'Switch',
      job: 'Chief Technology officer',
      description: [
        "Reasearch on Optimum technologies, packages and libraries for mobile development.",
        "Built Application structure based on Clean Architecture.",
        "Collaborate with users and QA team to ensure market quality, provide implementations to solutions and fix bugs."
      ],
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
          "Created a curriculum to facilitate the learning of Programming by Junior developers",
          "Mentored and trained 23 young developers in Nigeria on the basics of software and hardware development"
        ],
        url: '',
        links: [],
        currentlyWorking: false,
        startDate: DateTime(2020, 3),
        endDate: DateTime(2020, 8)),
  ];
}
