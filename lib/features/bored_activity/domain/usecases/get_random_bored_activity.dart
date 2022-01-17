import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:newblock/core/error/failures.dart';
import 'package:newblock/core/usecases/usecase.dart';
import 'package:newblock/features/bored_activity/domain/entities/bored_activity.dart';
import 'package:newblock/features/bored_activity/domain/repositories/bored_activity_repository.dart';

class GetRandomBoredActivity implements UseCase<BoredActivity, NoParams>{

  final BoredActivityRepository repository;

  GetRandomBoredActivity({required this.repository});
  @override
  Future<Either<Failure, BoredActivity>> call(NoParams params) async{
    // TODO: implement call
    return await repository.getBoredActivity();
  }

}