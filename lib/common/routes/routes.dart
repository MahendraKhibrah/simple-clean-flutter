import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/common/constants/route_keys.dart';
import 'package:template/common/di/get_it.dart';
import 'package:template/features/fact/presentation/cubits/get_fact_cubit.dart';
import 'package:template/features/fact/presentation/pages/fact_page.dart';

final routes = <String, Widget Function(BuildContext)>{
  RouteKeys.fact: (context) => BlocProvider(
        create: (context) {
          return getIt<GetFactCubit>()..getFact();
        },
        child: const FactPage(),
      ),
};
