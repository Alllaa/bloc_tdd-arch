import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newblock/features/bored_activity/data/datasources/bored_activity_remote_data_source.dart';
import 'package:newblock/features/bored_activity/domain/repositories/bored_activity_repository.dart';
import 'package:newblock/features/bored_activity/presentation/pages/home_page.dart';

import 'features/bored_activity/data/repositories/bored_activity_repository_impl.dart';
import 'features/bored_activity/domain/usecases/get_random_bored_activity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context)=> GetRandomBoredActivity(repository: BoredActivityRepositoryImpl(BoredActivitRemoteDataSourceImpl())),
          )
        ], child: HomePage(),
      ),
    );
  }
}


