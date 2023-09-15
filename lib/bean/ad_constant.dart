// ignore_for_file: constant_identifier_names

enum AdType {
  IDLE(-1),
  BANNER(0),
  INTERSTITIAL(1),
  NATIVE(2),
  REWARDED(3),
  REWARDED_INTERSTITIAL(4),
  APP_OPEN(5),
  MREC(6);

  final int value;
  const AdType(this.value);
}

enum AdMediation {
  IDLE(-1),
  MOPUB(0),
  MAX(1),
  HISAVANA(2),
  COMBO(3);

  final int value;
  const AdMediation(this.value);
}

enum AdPlatform {
  UNDISCLOSED(-2),
  IDLE(-1),
  ADMOB(0),
  MOPUB(1),
  ADCOLONY(2),
  APPLOVIN(3),
  CHARTBOOST(4),
  FACEBOOK(5),
  INMOBI(6),
  IRONSOURCE(7),
  PANGLE(8),
  SNAP_AUDIENCE_NETWORK(9),
  TAPJOY(10),
  UNITY_ADS(11),
  VERIZON_MEDIA(12),
  VUNGLE(13),
  ADX(14),
  COMBO(15),
  BIGO(16),
  HISAVANA(17),
  APPLOVIN_EXCHANGE(18),
  LOVINJOYADS(33);

  final int value;
  const AdPlatform(this.value);
}