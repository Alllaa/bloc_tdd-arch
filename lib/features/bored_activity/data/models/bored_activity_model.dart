import 'package:newblock/features/bored_activity/domain/entities/bored_activity.dart';
import 'package:meta/meta.dart';

class BoredActivityModel extends BoredActivity {
  const BoredActivityModel(
      {@required String? activity,
      @required String? type,
      @required int? participants,
      @required double? price,
      @required String? link,
      @required String? key,
      @required double? accessibility})
      : super(
            activity: activity,
            type: type,
            participants: participants,
            price: price,
            link: link,
            key: key,
            accessibility: accessibility);

  factory BoredActivityModel.fromJson(Map<String, dynamic> json) =>
      BoredActivityModel(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"].toDouble(),
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
      };
}
