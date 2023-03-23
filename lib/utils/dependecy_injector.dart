import 'package:ios_portfolio/controllers/main.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class DependencyInjector {
  static List<SingleChildWidget> dependencies = [
    ChangeNotifierProvider(create: (_) => HomeController()),
  ];
}
