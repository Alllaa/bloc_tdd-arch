import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';


class BoredActivity extends Equatable{
  final String? activity;
  final String? type;
  final int? participants;
  final double? price;
  final String? link;
  final String? key;
  final double? accessibility;
  const BoredActivity({@required this.activity,  @required this.type,  @required this.participants,
  @required this.price,  @required this.link,  @required this.key, @required this.accessibility
              }) ;
  @override
  // TODO: implement props
  List<Object?> get props => [activity, type, participants, price, link, key, accessibility];


}