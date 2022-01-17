import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newblock/features/bored_activity/domain/usecases/get_random_bored_activity.dart';
import 'package:newblock/features/bored_activity/presentation/bloc/bored_activity_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BoredActivityBloc(
        RepositoryProvider.of<GetRandomBoredActivity>(context),
        // RepositoryProvider.of<ConnectivityService>(context),
      )..add(LoadApiEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Activities for bored people'),
        ),
        body: BlocBuilder<BoredActivityBloc, BoredActivityState>(
          builder: (context, state) {
            if (state is BoredActivityLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is BoredActivityLoadedState) {
              return Column(
                children: [
                  Text(state.activityName?? "no data"),
                  Text(state.activityType ??"no data"),
                  Text(
                    state.participants.toString(),
                  ),
                  ElevatedButton(
                    onPressed: () => BlocProvider.of<BoredActivityBloc>(context).add(LoadApiEvent()),
                    child: Text('LOAD NEXT'),
                  )
                ],
              );
            }

            return Container();
          },
        ),
      ),
    );
  }
}
