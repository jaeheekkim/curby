import 'dart:convert';

import 'package:flutter/foundation.dart';

class Geocode {
  GeocodeLocation location;
  Popularity popularity;
  String link;
  List<NearbyRestaurant> nearbyRestaurants;

  Geocode({
    this.popularity,
    this.link,
    this.nearbyRestaurants,
  });

  Geocode copyWith({
    Popularity popularity,
    String link,
    List<NearbyRestaurant> nearbyRestaurants,
  }) {
    return Geocode(
      popularity: popularity ?? this.popularity,
      link: link ?? this.link,
      nearbyRestaurants: nearbyRestaurants ?? this.nearbyRestaurants,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'popularity': popularity?.toMap(),
      'link': link,
      'nearbyRestaurants': nearbyRestaurants?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory Geocode.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Geocode(
      popularity: Popularity.fromMap(map['popularity']),
      link: map['link'],
      nearbyRestaurants: List<NearbyRestaurant>.from(
          map['nearbyRestaurants']?.map((x) => NearbyRestaurant.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Geocode.fromJson(String source) =>
      Geocode.fromMap(json.decode(source));

  @override
  String toString() =>
      'Geocode(popularity: $popularity, link: $link, nearbyRestaurants: $nearbyRestaurants)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Geocode &&
        o.popularity == popularity &&
        o.link == link &&
        listEquals(o.nearbyRestaurants, nearbyRestaurants);
  }

  @override
  int get hashCode =>
      popularity.hashCode ^ link.hashCode ^ nearbyRestaurants.hashCode;
}

class GeocodeLocation {
  String entityType;
  int entityId;
  String title;
  String latitude;
  String longitude;
  int cityId;
  String cityName;
  int countryId;
  String countryName;

  GeocodeLocation({
    this.entityType,
    this.entityId,
    this.title,
    this.latitude,
    this.longitude,
    this.cityId,
    this.cityName,
    this.countryId,
    this.countryName,
  });
}

class NearbyRestaurant {
  Restaurant restaurant;

  NearbyRestaurant({
    this.restaurant,
  });

  NearbyRestaurant copyWith({
    Restaurant restaurant,
  }) {
    return NearbyRestaurant(
      restaurant: restaurant ?? this.restaurant,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'restaurant': restaurant?.toMap(),
    };
  }

  factory NearbyRestaurant.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return NearbyRestaurant(
      restaurant: Restaurant.fromMap(map['restaurant']),
    );
  }

  String toJson() => json.encode(toMap());

  factory NearbyRestaurant.fromJson(String source) =>
      NearbyRestaurant.fromMap(json.decode(source));

  @override
  String toString() => 'NearbyRestaurant(restaurant: $restaurant)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is NearbyRestaurant && o.restaurant == restaurant;
  }

  @override
  int get hashCode => restaurant.hashCode;
}

class Restaurant {
  R r;
  String apikey;
  String id;
  String name;
  String url;
  RestaurantLocation location;
  int switchToOrderMenu;
  String cuisines;
  int averageCostForTwo;
  int priceRange;
  String currency;
  List<dynamic> offers;
  int opentableSupport;
  int isZomatoBookRes;
  String mezzoProvider;
  int isBookFormWebView;
  String bookFormWebViewUrl;
  String bookAgainUrl;
  String thumb;
  UserRating userRating;
  String photosUrl;
  String menuUrl;
  String featuredImage;
  int hasOnlineDelivery;
  int isDeliveringNow;
  String storeType;
  bool includeBogoOffers;
  String deeplink;
  int isTableReservationSupported;
  int hasTableBooking;
  String eventsUrl;

  Restaurant({
    this.r,
    this.apikey,
    this.id,
    this.name,
    this.url,
    this.switchToOrderMenu,
    this.cuisines,
    this.averageCostForTwo,
    this.priceRange,
    this.currency,
    this.offers,
    this.opentableSupport,
    this.isZomatoBookRes,
    this.mezzoProvider,
    this.isBookFormWebView,
    this.bookFormWebViewUrl,
    this.bookAgainUrl,
    this.thumb,
    this.userRating,
    this.photosUrl,
    this.menuUrl,
    this.featuredImage,
    this.hasOnlineDelivery,
    this.isDeliveringNow,
    this.storeType,
    this.includeBogoOffers,
    this.deeplink,
    this.isTableReservationSupported,
    this.hasTableBooking,
    this.eventsUrl,
  });

  Restaurant copyWith({
    R r,
    String apikey,
    String id,
    String name,
    String url,
    int switchToOrderMenu,
    String cuisines,
    int averageCostForTwo,
    int priceRange,
    String currency,
    List<dynamic> offers,
    int opentableSupport,
    int isZomatoBookRes,
    String mezzoProvider,
    int isBookFormWebView,
    String bookFormWebViewUrl,
    String bookAgainUrl,
    String thumb,
    UserRating userRating,
    String photosUrl,
    String menuUrl,
    String featuredImage,
    int hasOnlineDelivery,
    int isDeliveringNow,
    String storeType,
    bool includeBogoOffers,
    String deeplink,
    int isTableReservationSupported,
    int hasTableBooking,
    String eventsUrl,
  }) {
    return Restaurant(
      r: r ?? this.r,
      apikey: apikey ?? this.apikey,
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
      switchToOrderMenu: switchToOrderMenu ?? this.switchToOrderMenu,
      cuisines: cuisines ?? this.cuisines,
      averageCostForTwo: averageCostForTwo ?? this.averageCostForTwo,
      priceRange: priceRange ?? this.priceRange,
      currency: currency ?? this.currency,
      offers: offers ?? this.offers,
      opentableSupport: opentableSupport ?? this.opentableSupport,
      isZomatoBookRes: isZomatoBookRes ?? this.isZomatoBookRes,
      mezzoProvider: mezzoProvider ?? this.mezzoProvider,
      isBookFormWebView: isBookFormWebView ?? this.isBookFormWebView,
      bookFormWebViewUrl: bookFormWebViewUrl ?? this.bookFormWebViewUrl,
      bookAgainUrl: bookAgainUrl ?? this.bookAgainUrl,
      thumb: thumb ?? this.thumb,
      userRating: userRating ?? this.userRating,
      photosUrl: photosUrl ?? this.photosUrl,
      menuUrl: menuUrl ?? this.menuUrl,
      featuredImage: featuredImage ?? this.featuredImage,
      hasOnlineDelivery: hasOnlineDelivery ?? this.hasOnlineDelivery,
      isDeliveringNow: isDeliveringNow ?? this.isDeliveringNow,
      storeType: storeType ?? this.storeType,
      includeBogoOffers: includeBogoOffers ?? this.includeBogoOffers,
      deeplink: deeplink ?? this.deeplink,
      isTableReservationSupported:
          isTableReservationSupported ?? this.isTableReservationSupported,
      hasTableBooking: hasTableBooking ?? this.hasTableBooking,
      eventsUrl: eventsUrl ?? this.eventsUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'r': r?.toMap(),
      'apikey': apikey,
      'id': id,
      'name': name,
      'url': url,
      'switchToOrderMenu': switchToOrderMenu,
      'cuisines': cuisines,
      'averageCostForTwo': averageCostForTwo,
      'priceRange': priceRange,
      'currency': currency,
      'offers': offers,
      'opentableSupport': opentableSupport,
      'isZomatoBookRes': isZomatoBookRes,
      'mezzoProvider': mezzoProvider,
      'isBookFormWebView': isBookFormWebView,
      'bookFormWebViewUrl': bookFormWebViewUrl,
      'bookAgainUrl': bookAgainUrl,
      'thumb': thumb,
      'userRating': userRating?.toMap(),
      'photosUrl': photosUrl,
      'menuUrl': menuUrl,
      'featuredImage': featuredImage,
      'hasOnlineDelivery': hasOnlineDelivery,
      'isDeliveringNow': isDeliveringNow,
      'storeType': storeType,
      'includeBogoOffers': includeBogoOffers,
      'deeplink': deeplink,
      'isTableReservationSupported': isTableReservationSupported,
      'hasTableBooking': hasTableBooking,
      'eventsUrl': eventsUrl,
    };
  }

  factory Restaurant.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Restaurant(
      r: R.fromMap(map['r']),
      apikey: map['apikey'],
      id: map['id'],
      name: map['name'],
      url: map['url'],
      switchToOrderMenu: map['switchToOrderMenu'],
      cuisines: map['cuisines'],
      averageCostForTwo: map['averageCostForTwo'],
      priceRange: map['priceRange'],
      currency: map['currency'],
      offers: List<dynamic>.from(map['offers']),
      opentableSupport: map['opentableSupport'],
      isZomatoBookRes: map['isZomatoBookRes'],
      mezzoProvider: map['mezzoProvider'],
      isBookFormWebView: map['isBookFormWebView'],
      bookFormWebViewUrl: map['bookFormWebViewUrl'],
      bookAgainUrl: map['bookAgainUrl'],
      thumb: map['thumb'],
      userRating: UserRating.fromMap(map['userRating']),
      photosUrl: map['photosUrl'],
      menuUrl: map['menuUrl'],
      featuredImage: map['featuredImage'],
      hasOnlineDelivery: map['hasOnlineDelivery'],
      isDeliveringNow: map['isDeliveringNow'],
      storeType: map['storeType'],
      includeBogoOffers: map['includeBogoOffers'],
      deeplink: map['deeplink'],
      isTableReservationSupported: map['isTableReservationSupported'],
      hasTableBooking: map['hasTableBooking'],
      eventsUrl: map['eventsUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Restaurant.fromJson(String source) =>
      Restaurant.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Restaurant(r: $r, apikey: $apikey, id: $id, name: $name, url: $url, switchToOrderMenu: $switchToOrderMenu, cuisines: $cuisines, averageCostForTwo: $averageCostForTwo, priceRange: $priceRange, currency: $currency, offers: $offers, opentableSupport: $opentableSupport, isZomatoBookRes: $isZomatoBookRes, mezzoProvider: $mezzoProvider, isBookFormWebView: $isBookFormWebView, bookFormWebViewUrl: $bookFormWebViewUrl, bookAgainUrl: $bookAgainUrl, thumb: $thumb, userRating: $userRating, photosUrl: $photosUrl, menuUrl: $menuUrl, featuredImage: $featuredImage, hasOnlineDelivery: $hasOnlineDelivery, isDeliveringNow: $isDeliveringNow, storeType: $storeType, includeBogoOffers: $includeBogoOffers, deeplink: $deeplink, isTableReservationSupported: $isTableReservationSupported, hasTableBooking: $hasTableBooking, eventsUrl: $eventsUrl)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Restaurant &&
        o.r == r &&
        o.apikey == apikey &&
        o.id == id &&
        o.name == name &&
        o.url == url &&
        o.switchToOrderMenu == switchToOrderMenu &&
        o.cuisines == cuisines &&
        o.averageCostForTwo == averageCostForTwo &&
        o.priceRange == priceRange &&
        o.currency == currency &&
        listEquals(o.offers, offers) &&
        o.opentableSupport == opentableSupport &&
        o.isZomatoBookRes == isZomatoBookRes &&
        o.mezzoProvider == mezzoProvider &&
        o.isBookFormWebView == isBookFormWebView &&
        o.bookFormWebViewUrl == bookFormWebViewUrl &&
        o.bookAgainUrl == bookAgainUrl &&
        o.thumb == thumb &&
        o.userRating == userRating &&
        o.photosUrl == photosUrl &&
        o.menuUrl == menuUrl &&
        o.featuredImage == featuredImage &&
        o.hasOnlineDelivery == hasOnlineDelivery &&
        o.isDeliveringNow == isDeliveringNow &&
        o.storeType == storeType &&
        o.includeBogoOffers == includeBogoOffers &&
        o.deeplink == deeplink &&
        o.isTableReservationSupported == isTableReservationSupported &&
        o.hasTableBooking == hasTableBooking &&
        o.eventsUrl == eventsUrl;
  }

  @override
  int get hashCode {
    return r.hashCode ^
        apikey.hashCode ^
        id.hashCode ^
        name.hashCode ^
        url.hashCode ^
        switchToOrderMenu.hashCode ^
        cuisines.hashCode ^
        averageCostForTwo.hashCode ^
        priceRange.hashCode ^
        currency.hashCode ^
        offers.hashCode ^
        opentableSupport.hashCode ^
        isZomatoBookRes.hashCode ^
        mezzoProvider.hashCode ^
        isBookFormWebView.hashCode ^
        bookFormWebViewUrl.hashCode ^
        bookAgainUrl.hashCode ^
        thumb.hashCode ^
        userRating.hashCode ^
        photosUrl.hashCode ^
        menuUrl.hashCode ^
        featuredImage.hashCode ^
        hasOnlineDelivery.hashCode ^
        isDeliveringNow.hashCode ^
        storeType.hashCode ^
        includeBogoOffers.hashCode ^
        deeplink.hashCode ^
        isTableReservationSupported.hashCode ^
        hasTableBooking.hashCode ^
        eventsUrl.hashCode;
  }
}

class RestaurantLocation {
  String address;
  String locality;
  String city;
  int cityId;
  String latitude;
  String longitude;
  String zipcode;
  int countryId;
  String localityVerbose;

  RestaurantLocation({
    this.address,
    this.locality,
    this.city,
    this.cityId,
    this.latitude,
    this.longitude,
    this.zipcode,
    this.countryId,
    this.localityVerbose,
  });
}

class R {
  HasMenuStatus hasMenuStatus;
  int resId;
  bool isGroceryStore;

  R({
    this.hasMenuStatus,
    this.resId,
    this.isGroceryStore,
  });

  R copyWith({
    HasMenuStatus hasMenuStatus,
    int resId,
    bool isGroceryStore,
  }) {
    return R(
      hasMenuStatus: hasMenuStatus ?? this.hasMenuStatus,
      resId: resId ?? this.resId,
      isGroceryStore: isGroceryStore ?? this.isGroceryStore,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'hasMenuStatus': hasMenuStatus?.toMap(),
      'resId': resId,
      'isGroceryStore': isGroceryStore,
    };
  }

  factory R.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return R(
      hasMenuStatus: HasMenuStatus.fromMap(map['hasMenuStatus']),
      resId: map['resId'],
      isGroceryStore: map['isGroceryStore'],
    );
  }

  String toJson() => json.encode(toMap());

  factory R.fromJson(String source) => R.fromMap(json.decode(source));

  @override
  String toString() =>
      'R(hasMenuStatus: $hasMenuStatus, resId: $resId, isGroceryStore: $isGroceryStore)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is R &&
        o.hasMenuStatus == hasMenuStatus &&
        o.resId == resId &&
        o.isGroceryStore == isGroceryStore;
  }

  @override
  int get hashCode =>
      hasMenuStatus.hashCode ^ resId.hashCode ^ isGroceryStore.hashCode;
}

class HasMenuStatus {
  int delivery;
  int takeaway;

  HasMenuStatus({
    this.delivery,
    this.takeaway,
  });

  HasMenuStatus copyWith({
    int delivery,
    int takeaway,
  }) {
    return HasMenuStatus(
      delivery: delivery ?? this.delivery,
      takeaway: takeaway ?? this.takeaway,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'delivery': delivery,
      'takeaway': takeaway,
    };
  }

  factory HasMenuStatus.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return HasMenuStatus(
      delivery: map['delivery'],
      takeaway: map['takeaway'],
    );
  }

  String toJson() => json.encode(toMap());

  factory HasMenuStatus.fromJson(String source) =>
      HasMenuStatus.fromMap(json.decode(source));

  @override
  String toString() =>
      'HasMenuStatus(delivery: $delivery, takeaway: $takeaway)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is HasMenuStatus &&
        o.delivery == delivery &&
        o.takeaway == takeaway;
  }

  @override
  int get hashCode => delivery.hashCode ^ takeaway.hashCode;
}

class UserRating {
  String aggregateRating;
  String ratingText;
  String ratingColor;
  RatingObj ratingObj;
  int votes;

  UserRating({
    this.aggregateRating,
    this.ratingText,
    this.ratingColor,
    this.ratingObj,
    this.votes,
  });

  UserRating copyWith({
    String aggregateRating,
    String ratingText,
    String ratingColor,
    RatingObj ratingObj,
    int votes,
  }) {
    return UserRating(
      aggregateRating: aggregateRating ?? this.aggregateRating,
      ratingText: ratingText ?? this.ratingText,
      ratingColor: ratingColor ?? this.ratingColor,
      ratingObj: ratingObj ?? this.ratingObj,
      votes: votes ?? this.votes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'aggregateRating': aggregateRating,
      'ratingText': ratingText,
      'ratingColor': ratingColor,
      'ratingObj': ratingObj?.toMap(),
      'votes': votes,
    };
  }

  factory UserRating.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserRating(
      aggregateRating: map['aggregateRating'],
      ratingText: map['ratingText'],
      ratingColor: map['ratingColor'],
      ratingObj: RatingObj.fromMap(map['ratingObj']),
      votes: map['votes'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserRating.fromJson(String source) =>
      UserRating.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserRating(aggregateRating: $aggregateRating, ratingText: $ratingText, ratingColor: $ratingColor, ratingObj: $ratingObj, votes: $votes)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is UserRating &&
        o.aggregateRating == aggregateRating &&
        o.ratingText == ratingText &&
        o.ratingColor == ratingColor &&
        o.ratingObj == ratingObj &&
        o.votes == votes;
  }

  @override
  int get hashCode {
    return aggregateRating.hashCode ^
        ratingText.hashCode ^
        ratingColor.hashCode ^
        ratingObj.hashCode ^
        votes.hashCode;
  }
}

class RatingObj {
  Title title;
  BgColor bgColor;

  RatingObj({
    this.title,
    this.bgColor,
  });

  RatingObj copyWith({
    Title title,
    BgColor bgColor,
  }) {
    return RatingObj(
      title: title ?? this.title,
      bgColor: bgColor ?? this.bgColor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title?.toMap(),
      'bgColor': bgColor?.toMap(),
    };
  }

  factory RatingObj.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return RatingObj(
      title: Title.fromMap(map['title']),
      bgColor: BgColor.fromMap(map['bgColor']),
    );
  }

  String toJson() => json.encode(toMap());

  factory RatingObj.fromJson(String source) =>
      RatingObj.fromMap(json.decode(source));

  @override
  String toString() => 'RatingObj(title: $title, bgColor: $bgColor)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is RatingObj && o.title == title && o.bgColor == bgColor;
  }

  @override
  int get hashCode => title.hashCode ^ bgColor.hashCode;
}

class BgColor {
  String type;
  String tint;

  BgColor({
    this.type,
    this.tint,
  });

  BgColor copyWith({
    String type,
    String tint,
  }) {
    return BgColor(
      type: type ?? this.type,
      tint: tint ?? this.tint,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'tint': tint,
    };
  }

  factory BgColor.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return BgColor(
      type: map['type'],
      tint: map['tint'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BgColor.fromJson(String source) =>
      BgColor.fromMap(json.decode(source));

  @override
  String toString() => 'BgColor(type: $type, tint: $tint)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is BgColor && o.type == type && o.tint == tint;
  }

  @override
  int get hashCode => type.hashCode ^ tint.hashCode;
}

class Title {
  String text;

  Title({
    this.text,
  });

  Title copyWith({
    String text,
  }) {
    return Title(
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
    };
  }

  factory Title.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Title(
      text: map['text'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Title.fromJson(String source) => Title.fromMap(json.decode(source));

  @override
  String toString() => 'Title(text: $text)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Title && o.text == text;
  }

  @override
  int get hashCode => text.hashCode;
}

class Popularity {
  String popularity;
  String nightlifeIndex;
  List<String> nearbyRes;
  List<String> topCuisines;
  String popularityRes;
  String nightlifeRes;
  String subzone;
  int subzoneId;
  String city;

  Popularity({
    this.popularity,
    this.nightlifeIndex,
    this.nearbyRes,
    this.topCuisines,
    this.popularityRes,
    this.nightlifeRes,
    this.subzone,
    this.subzoneId,
    this.city,
  });

  Popularity copyWith({
    String popularity,
    String nightlifeIndex,
    List<String> nearbyRes,
    List<String> topCuisines,
    String popularityRes,
    String nightlifeRes,
    String subzone,
    int subzoneId,
    String city,
  }) {
    return Popularity(
      popularity: popularity ?? this.popularity,
      nightlifeIndex: nightlifeIndex ?? this.nightlifeIndex,
      nearbyRes: nearbyRes ?? this.nearbyRes,
      topCuisines: topCuisines ?? this.topCuisines,
      popularityRes: popularityRes ?? this.popularityRes,
      nightlifeRes: nightlifeRes ?? this.nightlifeRes,
      subzone: subzone ?? this.subzone,
      subzoneId: subzoneId ?? this.subzoneId,
      city: city ?? this.city,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'popularity': popularity,
      'nightlifeIndex': nightlifeIndex,
      'nearbyRes': nearbyRes,
      'topCuisines': topCuisines,
      'popularityRes': popularityRes,
      'nightlifeRes': nightlifeRes,
      'subzone': subzone,
      'subzoneId': subzoneId,
      'city': city,
    };
  }

  factory Popularity.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Popularity(
      popularity: map['popularity'],
      nightlifeIndex: map['nightlifeIndex'],
      nearbyRes: List<String>.from(map['nearbyRes']),
      topCuisines: List<String>.from(map['topCuisines']),
      popularityRes: map['popularityRes'],
      nightlifeRes: map['nightlifeRes'],
      subzone: map['subzone'],
      subzoneId: map['subzoneId'],
      city: map['city'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Popularity.fromJson(String source) =>
      Popularity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Popularity(popularity: $popularity, nightlifeIndex: $nightlifeIndex, nearbyRes: $nearbyRes, topCuisines: $topCuisines, popularityRes: $popularityRes, nightlifeRes: $nightlifeRes, subzone: $subzone, subzoneId: $subzoneId, city: $city)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Popularity &&
        o.popularity == popularity &&
        o.nightlifeIndex == nightlifeIndex &&
        listEquals(o.nearbyRes, nearbyRes) &&
        listEquals(o.topCuisines, topCuisines) &&
        o.popularityRes == popularityRes &&
        o.nightlifeRes == nightlifeRes &&
        o.subzone == subzone &&
        o.subzoneId == subzoneId &&
        o.city == city;
  }

  @override
  int get hashCode {
    return popularity.hashCode ^
        nightlifeIndex.hashCode ^
        nearbyRes.hashCode ^
        topCuisines.hashCode ^
        popularityRes.hashCode ^
        nightlifeRes.hashCode ^
        subzone.hashCode ^
        subzoneId.hashCode ^
        city.hashCode;
  }
}
