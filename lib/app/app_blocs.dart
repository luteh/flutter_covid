import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_covid/presentation/home/cubit/home_cubit.dart';

import '../di/injection_container.dart';

class AppBlocs {
  const AppBlocs._();

  static final List<BlocProvider> items = [
    BlocProvider<HomeCubit>(
      create: (context) => getIt.get(),
    ),
  ];
}
