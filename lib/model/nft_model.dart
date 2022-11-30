class NftModel {
  NftModel({
    required this.message,
    required this.nft,
  });
  late final dynamic message;
  late final List<Nft> nft;

  NftModel.fromJson(Map<dynamic, dynamic> json) {
    message = json['message'];
    nft = List.from(json['nft']).map((e) => Nft.fromJson(e)).toList();
  }

  Map<dynamic, dynamic> toJson() {
    final data = <dynamic, dynamic>{};
    data['message'] = message;
    data['nft'] = nft.map((e) => e.toJson()).toList();
    return data;
  }
}

class Nft {
  Nft({
    required this.id,
    required this.name,
    required this.date,
    required this.availableNfts,
    required this.perkNft,
    required this.description,
    required this.startDate,
    required this.startTime,
    required this.endTime,
    required this.venue,
    required this.imageName,
    required this.purchaseDate,
    required this.briefDetails,
    required this.isDraft,
    required this.avatar,
    required this.price,
    required this.type,
    required this.likes,
    required this.v,
  });
  late final dynamic id;
  late final dynamic name;
  late final dynamic date;
  late final dynamic availableNfts;
  late final dynamic perkNft;
  late final dynamic description;
  late final dynamic startDate;
  late final dynamic startTime;
  late final dynamic endTime;
  late final dynamic venue;
  late final dynamic imageName;
  late final dynamic purchaseDate;
  late final dynamic briefDetails;
  late final int isDraft;
  late final dynamic avatar;
  late final int price;
  late final dynamic type;
  late final List<dynamic> likes;
  late final dynamic v;

  Nft.fromJson(Map<dynamic, dynamic> json) {
    id = json["_id"];
    name = json['name'];
    date = json['date'];
    availableNfts = json['availableNfts'];
    perkNft = json['perkNft'];
    description = json['description'];
    startDate = json['startDate'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    venue = json['venue'];
    imageName = json['imageName'];
    purchaseDate = json['purchaseDate'];
    briefDetails = json['briefDetails'];
    isDraft = json['isDraft'];
    avatar = json['avatar'];
    price = json['price'];
    type = json['type'];
    likes = List.castFrom<dynamic, dynamic>(json['likes']);
    v = json["__v"];
  }

  Map<dynamic, dynamic> toJson() {
    final data = <dynamic, dynamic>{};
    data['_id'] = id;
    data['name'] = name;
    data['date'] = date;
    data['availableNfts'] = availableNfts;
    data['perkNft'] = perkNft;
    data['description'] = description;
    data['startDate'] = startDate;
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    data['venue'] = venue;
    data['imageName'] = imageName;
    data['purchaseDate'] = purchaseDate;
    data['briefDetails'] = briefDetails;
    data['isDraft'] = isDraft;
    data['avatar'] = avatar;
    data['price'] = price;
    data['type'] = type;
    data['likes'] = likes;
    data['_v'] = v;
    return data;
  }
}
