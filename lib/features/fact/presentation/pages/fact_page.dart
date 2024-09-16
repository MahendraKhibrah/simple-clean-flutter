import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/features/fact/presentation/cubits/get_fact_cubit.dart';

class FactPage extends StatelessWidget {
  const FactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          const Text('Fact Page'),
          OutlinedButton(
            onPressed: () {
              context.read<GetFactCubit>().getFact();
            },
            child: const Text('press to get fact'),
          ),
          BlocBuilder<GetFactCubit, GetFactState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const Text('initial'),
                loading: (_) => const CircularProgressIndicator(),
                success: (data) => Column(
                  children: [
                    Text(data.fact.description),
                    Text(data.fact.information),
                  ],
                ),
                error: (error) => Text(error.exception.toString()),
              );
            },
          ),
        ]),
      ),
    );
  }
}
