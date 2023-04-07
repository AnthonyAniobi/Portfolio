import 'package:flutter/material.dart';
import 'package:portfolio/screens/education/education_screen.dart';
import 'package:portfolio/screens/home/home_screen.dart';
import 'package:portfolio/screens/personal_projects/personal_projects_screen.dart';
import 'package:portfolio/screens/personal_projects/single_project_screen.dart';
import 'package:portfolio/screens/work_experience/work_experience_screen.dart';

class AppRouter {
  static String home = '/';
  static String personalProjects = '/personal_projects';
  static String education = '/education';
  static String workExperience = "/work_experience";

  static String currentRoute = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/personal_projects':
        return MaterialPageRoute(builder: (_) => PersonalProjectsScreen());
      case '/education':
        return MaterialPageRoute(builder: (_) => EducationScreen());
      case '/work_experience':
        return MaterialPageRoute(builder: (_) => WorkExperienceScreen());
      default:
        if (settings.name?.contains(personalProjects) ?? false) {
          String id = settings.name!.split("/").last;
          return MaterialPageRoute(builder: (_) => SingleProjectScreen(id: id));
        }
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const HomeScreen(),
    workExperience: (context) => const WorkExperienceScreen(),
    personalProjects: (context) => const PersonalProjectsScreen(),
    education: (contex) => const EducationScreen(),
  };

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static moveTo(String routeName) {
    currentRoute = routeName;
    navigatorKey.currentState!.pushNamed(routeName);
  }
}
