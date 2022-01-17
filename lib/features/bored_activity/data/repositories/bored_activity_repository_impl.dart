import 'package:dartz/dartz.dart';
import 'package:newblock/core/error/exceptions.dart';
import 'package:newblock/core/error/failures.dart';
import 'package:newblock/features/bored_activity/data/datasources/bored_activity_remote_data_source.dart';
import 'package:newblock/features/bored_activity/domain/entities/bored_activity.dart';
import 'package:newblock/features/bored_activity/domain/repositories/bored_activity_repository.dart';

class BoredActivityRepositoryImpl implements BoredActivityRepository{

  final BoredActivitRemoteDataSource remoteDataSource;

  BoredActivityRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, BoredActivity>> getBoredActivity()async {
    // TODO: implement getBoredActivity
    try{
      final boredActivity = await remoteDataSource.getBoredActivity();
      return Right(boredActivity);
    }on ServerException{
      return Left(ServerFailure());
    }
  }

}