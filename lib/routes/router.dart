import '../resources/pages/food_app/food_home_page.dart';
import '../resources/pages/travel_app/travel_detail_page.dart';
import '../resources/pages/travel_app/travel_home_page.dart';
 
import '../resources/pages/travel_app/travel_welcome_page.dart';
import '/resources/pages/home_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

/*
|--------------------------------------------------------------------------
| App Router
|
| * [Tip] Create pages faster 🚀
| Run the below in the terminal to create new a page.
| "flutter pub run nylo_framework:main make:page profile_page"
| Learn more https://nylo.dev/docs/4.x/router
|--------------------------------------------------------------------------
*/

appRouter() => nyRoutes((router) {

  router.route("/", (context) => HomePage(title: "Hello World"));

  // Add your routes here

  // router.route("/new-page", (context) => NewPage(), transition: PageTransitionType.fade);

   router.route("/travel-welcome", (context) => TravelWelcomePage());

  router.route("/travel-home", (context) => TravelHomePage());

  router.route("/travel-detail", (context) => TravelDetailPage());

  router.route("/food-home", (context) => FoodHomePage());
});