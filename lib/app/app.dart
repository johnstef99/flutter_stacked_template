import 'package:flutter_stacked_template/ui/home/home_view.dart';
import 'package:flutter_stacked_template/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
  ],
  dependencies: [
    // Lazy singletons
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: NavigationService),

    // singletons
    Singleton(classType: HomeViewModel),
  ],
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
