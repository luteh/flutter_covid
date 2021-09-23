import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/my_app.dart';
import 'app/my_bloc_observer.dart';
import 'di/injection_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  configureDependencies();
  runApp(const MyApp());
}
