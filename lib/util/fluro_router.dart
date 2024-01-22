import 'package:fluro/fluro.dart';
import 'package:portfolio/screens/education/education_screen.dart';
import 'package:portfolio/screens/home/home_screen.dart';
import 'package:portfolio/screens/mobile_projects/mobile_project_screen.dart';
import 'package:portfolio/screens/personal_projects/personal_projects_screen.dart';
import 'package:portfolio/screens/personal_projects/single_project_screen.dart';
import 'package:portfolio/screens/work_experience/work_experience_screen.dart';
import 'package:portfolio/util/app_router.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String currentRoute = '/';

  static final Handler _homeHandler = Handler(
    handlerFunc: (context, parameters) => const HomeScreen(),
  );
  static final Handler _mobileProjectHandler = Handler(
    handlerFunc: (context, parameters) => const MobileProjectScreen(),
  );
  static final Handler _educationHandler = Handler(
    handlerFunc: (context, parameters) => const EducationScreen(),
  );
  static final Handler _experienceHandler = Handler(
    handlerFunc: (context, parameters) => const WorkExperienceScreen(),
  );
  static final Handler _projectHandler = Handler(
    handlerFunc: (context, parameters) => const PersonalProjectsScreen(),
  );
  static final Handler _singleProjectHandler = Handler(
    handlerFunc: (context, parameters) => SingleProjectScreen(
      id: parameters['id']!.first,
    ),
  );

  static void setupRouter() {
    router.define(
      HomeScreen.routeName,
      handler: _homeHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      MobileProjectScreen.routeName,
      handler: _mobileProjectHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      EducationScreen.routeName,
      handler: _educationHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      PersonalProjectsScreen.routeName,
      handler: _projectHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      WorkExperienceScreen.routeName,
      handler: _experienceHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      "${SingleProjectScreen.routeName}/:id",
      handler: _singleProjectHandler,
      transitionType: TransitionType.fadeIn,
    );
  }

  static void moveTo(String path) {
    currentRoute = path;
    router.navigateTo(AppRouter.navigatorKey.currentContext!, path);
  }
}
