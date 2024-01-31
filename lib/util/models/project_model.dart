import 'package:portfolio/util/app_enums.dart';
import 'package:portfolio/util/models/image_link_model.dart';

class ProjectModel {
  final String name;
  final String description;
  final List<String> features;
  final String previewImage;
  final List<String> images;
  final List<ImageLinkModel> tags;
  final bool isExternal;

  ProjectModel(
      {required this.name,
      required this.description,
      required this.previewImage,
      required this.images,
      required this.features,
      required this.tags,
      this.isExternal = false});

  static List<ProjectModel> get all => [
        ProjectModel(
            name: "Invoice Receipt Memo",
            description: """
A mobile application for generating invoices, Receipts and memos. This application can be used to create and share signed office documents.
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1680999928/portfolio/invoicereceiptmemo_preview_zqhsli.png",
            images: [
              "https://res.cloudinary.com/aniobi/image/upload/v1681000212/portfolio/Screenshot_2023-04-09_at_01.20.04_ufdurh.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681000212/portfolio/Screenshot_2023-04-09_at_01.20.18_lnzjbs.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681000213/portfolio/Screenshot_2023-04-09_at_01.20.48_r0qzxx.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681000213/portfolio/Screenshot_2023-04-09_at_01.20.34_wg1gw8.png",
            ],
            features: [
              "Create Document from a list of available templates",
              "Save company information for easy creation of document",
              "Add company logo to Documents",
              "Write and save signatures to the application",
              "Share Documents to anyone from email or whatsapp",
            ],
            tags: [
              ImageLinkModel(
                  appLink:
                      "https://play.google.com/store/apps/details?id=com.anthonyaniobi.invoicereceiptandmemo",
                  location: DeployedLocation.playstore,
                  appName: "Invoice, Receipt & Memo"),
            ]),
        ProjectModel(
            name: "Solar Consult",
            description: """
A mobile application for calculating solar panel requirements in a building and providing recommendations on installation setup. The application takes in the number of appliances available in a house/Office, Performs calculations and generates report based on the information. The application also features a community of solar panel users who help each other by providing support by asking and receiving results from users.
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1680999928/portfolio/solar_consult_preview_vv4mp1.png",
            images: [
              "https://res.cloudinary.com/aniobi/image/upload/v1681000213/portfolio/Screenshot_2023-04-09_at_01.29.09_vedmbo.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681000213/portfolio/Screenshot_2023-04-09_at_01.28.23_ohkqeh.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681000213/portfolio/Screenshot_2023-04-09_at_01.28.38_comxl3.png",
            ],
            features: [
              "Solar Recommendation Service",
              "Electrical appliance sizing and power calculations",
              "Education on Solar Panel usage",
              "Community Support",
            ],
            tags: [
              ImageLinkModel(
                  appLink:
                      "https://play.google.com/store/apps/details?id=com.aniobianthony.solarconsult",
                  location: DeployedLocation.playstore,
                  appName: "Solar Consult")
            ]),
        ProjectModel(
            name: "Api Server",
            description: """
A desktop application for running servers locally on a machine. This application gives front end developers a development server they can work with that is easily customizable from a simple userfriendly screen.
The application uses Github actions to perform automatic packaging of the desktop application into desktop applications for Windows, MacOS and Linux. The files are located in the releases section of the github account. 
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1681001119/portfolio/apiserver_preview_ugvbhq.png",
            images: [
              "https://res.cloudinary.com/aniobi/image/upload/v1681001033/portfolio/endpoints_page_eu82op.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681001032/portfolio/add_endpoint_ed0mkh.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681001033/portfolio/running_endpoints_kzgltv.png",
            ],
            features: [
              "Create custom GET, POST, PUT, DELETE servers locally",
              "Automatic packaging and deployment for Windows, Linux and MacOs"
            ],
            tags: [
              ImageLinkModel(
                  appLink: "https://github.com/AnthonyAniobi/Api_Server",
                  location: DeployedLocation.github,
                  appName: "Api Server")
            ]),
        ProjectModel(
            name: "Date Format Field",
            description: """
A flutter packge that supports formating of textfield for datetime inputs.
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1681001592/portfolio/dateformat_preview_a3nhmz.png",
            images: [],
            features: [
              "Format Textfield for Datetime input",
              "Four datetime formating styles",
              "Automatic deployment to Pub.dev from github"
            ],
            tags: [
              ImageLinkModel(
                  appLink: "https://pub.dev/packages/date_format_field",
                  location: DeployedLocation.pubdev,
                  appName: "Date Format Field"),
              ImageLinkModel(
                  appLink: "https://github.com/AnthonyAniobi/Date_Format_Field",
                  location: DeployedLocation.github,
                  appName: "Date Format Field"),
            ]),
        ProjectModel(
            name: "Dynamic Carousel",
            description: """
A flutter packge that builds a carousel with zoom animation and dynamic deleting feature
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1681021717/portfolio/dynamiccarousel_preview_u0m1zx.png",
            images: [],
            features: [
              "Animated Carousel with center zoom feature",
              "Dynamic carousel with onDelete function",
            ],
            tags: [
              ImageLinkModel(
                  appLink: "https://pub.dev/packages/dynamic_carousel",
                  location: DeployedLocation.pubdev,
                  appName: "Dynamic Carousel"),
              ImageLinkModel(
                  appLink: "https://github.com/AnthonyAniobi/Dynamic_Carousel",
                  location: DeployedLocation.github,
                  appName: "Dynamic Carousel"),
            ]),
        ProjectModel(
            name: "Nigerian Cuisine",
            description: """
Application for getting nigerian food recipes
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1681114847/nigeriancuisine_preview_xafbn5.png",
            images: [
              "https://res.cloudinary.com/aniobi/image/upload/v1681114806/Screenshot_2023-04-10_at_09.09.53_bze8wy.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681114808/Screenshot_2023-04-10_at_09.10.32_gd3iq6.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681114807/Screenshot_2023-04-10_at_09.11.03_bjfcmz.png",
            ],
            features: [
              "Nigerian Food recipes",
              "List of ingredients",
            ],
            tags: [
              ImageLinkModel(
                  appLink:
                      "https://apkcombo.com/nigerian-cuisine/com.devessentials.nigeriancuisine/",
                  location: DeployedLocation.playstore,
                  appName: "Nigerian Cuisine")
            ]),
        ProjectModel(
            name: "Furniture App",
            description: """
An ios application with swiftUI for selling furnitures
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1680998766/portfolio/furniture_app_preview_jd5hwo.png",
            images: [
              "https://res.cloudinary.com/aniobi/image/upload/v1680999092/portfolio/home_gwcrlc.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1680999092/portfolio/detail_ruphes.png",
            ],
            features: [
              "Nice UI for furniture selling application",
              "Design in SwiftUI",
            ],
            tags: [
              ImageLinkModel(
                  appLink:
                      "https://github.com/AnthonyAniobi/Furniture_App_Swift_UI",
                  location: DeployedLocation.github,
                  appName: "Furniture App"),
            ]),
        ProjectModel(
            name: "Money Manager App",
            description: """
An ios application with swiftUI for managing expenses
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1680998766/portfolio/money_manager_preview_qccehb.png",
            images: [
              "https://res.cloudinary.com/aniobi/image/upload/v1680999151/portfolio/homepage_xfrrs8.png",
            ],
            features: [
              "Nice UI for tracking expenses",
              "Design in SwiftUI",
            ],
            tags: [
              ImageLinkModel(
                  appLink: "https://github.com/AnthonyAniobi/Money_Manager_IOS",
                  location: DeployedLocation.github,
                  appName: "Money Manager"),
            ]),
        ProjectModel(
            name: "Grocery App",
            description: """
A Grocery App built in Kotlin 
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1680998766/portfolio/grocery_preview_xfrhxd.png",
            images: [
              "https://res.cloudinary.com/aniobi/image/upload/v1680999347/portfolio/home1_hpwd3a.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1680999348/portfolio/home2_znsuzn.png",
            ],
            features: ["UI Built in Jetpack compose"],
            tags: [
              ImageLinkModel(
                  appLink: "https://github.com/AnthonyAniobi/JetpackProjects",
                  location: DeployedLocation.github,
                  appName: "Grocery App"),
            ]),
        ProjectModel(
            name: "Cleaning App",
            description: """
A Cleaning App built in Kotlin 
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1680998768/portfolio/cleaning_preview_cw4pqx.png",
            images: [
              "https://res.cloudinary.com/aniobi/image/upload/v1680999346/portfolio/cleaning1_zrv9td.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1680999347/portfolio/cleaning2_fyciic.png",
            ],
            features: [
              "Login Screen",
              "Onboarding Screen",
              "UI Built in Jetpack compose"
            ],
            tags: [
              ImageLinkModel(
                  appLink: "https://github.com/AnthonyAniobi/JetpackProjects",
                  location: DeployedLocation.github,
                  appName: "Cleaning App"),
            ]),
        ProjectModel(
          name: "Starconference",
          description: """
An application for creating and attending scheduled events. The application also features a conference attendance section that ticks attendance for every event and allows users to send picture, audio and text evidence and review on the session that was attended.
The application also has implements rewards for attendance based on the conference creator preference. This rewards range from animated to static avatars which can be collected by the user attending the conference. This souvenirs can be shared outside the application.
""",
          previewImage:
              "https://res.cloudinary.com/aniobi/image/upload/v1681051913/portfolio/starconference_preview_yhhcqa.png",
          images: [
            "https://res.cloudinary.com/aniobi/image/upload/v1681051811/portfolio/Simulator_Screen_Shot_-_iPhone_11_-_2023-04-09_at_15.42.06_l83xok.png",
            "https://res.cloudinary.com/aniobi/image/upload/v1681051827/portfolio/Simulator_Screen_Shot_-_iPhone_11_-_2023-04-09_at_15.43.59_u6tqdz.png",
          ],
          features: [
            "Create reccurring conferences at specific times",
            "Attend selected conferences at the specified time",
            "Record and Capture conference attendance",
            "Collect and share rewards from sessions attended",
          ],
          tags: [],
          isExternal: true,
        ),
        ProjectModel(
            name: "Bullseye Game",
            description: """
Bullseye Game built using swiftUI.
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1680998769/portfolio/bullseye_preview_lkotmx.png",
            images: [
              "https://res.cloudinary.com/aniobi/image/upload/v1680999221/portfolio/bullseye1_rhgwym.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1680999222/portfolio/bullseye2_td8mfq.png",
            ],
            features: [
              "Bullseye Game app",
              "Increased difficulty with time",
            ],
            tags: [
              ImageLinkModel(
                  appLink: "https://github.com/AnthonyAniobi/IOS_Apprentice",
                  location: DeployedLocation.github,
                  appName: "Bullseye"),
            ]),
        ProjectModel(
          name: "Hala Stores",
          description: """
Hala Foods is an application I built for the Hala stores for ordering foods and fruits from the store. The application uses Card payment and UPI payment. This application gets data from a custom api to display list of items for sell and also for configurations and UI designs.
""",
          previewImage:
              "https://res.cloudinary.com/aniobi/image/upload/v1681050242/portfolio/hala_preview_miaxmo.png",
          images: [
            "https://res.cloudinary.com/aniobi/image/upload/v1681049860/portfolio/hala1_plmi1p.png",
            "https://res.cloudinary.com/aniobi/image/upload/v1681049863/portfolio/hala2_f7yahc.png",
            "https://res.cloudinary.com/aniobi/image/upload/v1681049848/portfolio/hala3_h5ln96.png",
            "https://res.cloudinary.com/aniobi/image/upload/v1681049869/portfolio/hala4_ec0cio.png",
            "https://res.cloudinary.com/aniobi/image/upload/v1681049862/portfolio/hala5_yz83pc.png",
          ],
          features: [
            "Online Store with categories",
            "Online payments",
          ],
          tags: [
            ImageLinkModel(
                appLink: "https://apps.apple.com/app/hala-foods/id6446221807",
                location: DeployedLocation.appstore,
                appName: "Hala Store"),
            ImageLinkModel(
                appLink:
                    "https://play.google.com/store/apps/details?id=com.halafoods.Hala",
                location: DeployedLocation.playstore,
                appName: "Hala Store"),
          ],
          isExternal: true,
        ),
        ProjectModel(
          name: "Insurance App",
          description: """
Insurance Application that allows it's users order insurance services directly from their mobile devices 
""",
          previewImage:
              "https://res.cloudinary.com/aniobi/image/upload/v1681048861/portfolio/insurance_preview_qxspca.png",
          images: [
            "https://res.cloudinary.com/aniobi/image/upload/v1681048756/portfolio/Screenshot_2023-04-09_at_14.53.47_ao6z1p.png",
            "https://res.cloudinary.com/aniobi/image/upload/v1681048756/portfolio/Screenshot_2023-04-09_at_14.53.16_ibtkkh.png",
            "https://res.cloudinary.com/aniobi/image/upload/v1681048756/portfolio/Screenshot_2023-04-09_at_14.54.19_pighed.png",
          ],
          features: [
            "Ci/CD packaging on Gitlab",
            "Insurance from an application"
          ],
          tags: [],
          isExternal: true,
        ),
        ProjectModel(
            name: "Scoutbet",
            description: """
Application where users place stakes on the value of players and get rewards at the end of the season.
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1681108686/scoutbet_preview_ulqdkr.png",
            images: [
              "https://res.cloudinary.com/aniobi/image/upload/v1681108580/scoutbet1_qmfree.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681108585/scoutbet2_eij8fz.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681108576/scoutbet3_bmnxut.png",
            ],
            features: [
              "Peer to Peer, groups, and general competitions",
              "Realtime value chart for monitoring player assets",
              "Trading between users of application with game tokens",
              "In app payments for purchasing tokens.",
            ],
            tags: [],
            isExternal: true),
        ProjectModel(
            name: "Nigerian Cuisine",
            description: """
Application for getting nigerian food recipes
""",
            previewImage:
                "https://res.cloudinary.com/aniobi/image/upload/v1681114847/nigeriancuisine_preview_xafbn5.png",
            images: [
              "https://res.cloudinary.com/aniobi/image/upload/v1681114806/Screenshot_2023-04-10_at_09.09.53_bze8wy.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681114808/Screenshot_2023-04-10_at_09.10.32_gd3iq6.png",
              "https://res.cloudinary.com/aniobi/image/upload/v1681114807/Screenshot_2023-04-10_at_09.11.03_bjfcmz.png",
            ],
            features: [
              "Nigerian Food recipes",
              "List of ingredients",
            ],
            tags: [
              ImageLinkModel(
                  appLink:
                      "https://apkcombo.com/nigerian-cuisine/com.devessentials.nigeriancuisine/",
                  location: DeployedLocation.playstore,
                  appName: "Nigerian Cuisine"),
            ])
      ];
}
