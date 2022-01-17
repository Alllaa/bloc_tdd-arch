import 'package:newblock/core/error/failures.dart';
import 'package:newblock/features/bored_activity/domain/entities/bored_activity.dart';
import 'package:dartz/dartz.dart';

abstract class BoredActivityRepository{
Future<Either<Failure, BoredActivity>> getBoredActivity();
}

