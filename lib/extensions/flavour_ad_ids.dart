import 'package:ads/ads.dart';
import 'package:core/core.dart';

extension FlavorAdIds on Flavor {
  AdUnitIds adUnitIds(bool isAndroid) => switch (this) {
    Flavor.dev || Flavor.qa => AdUnitIds.test(isAndroid: isAndroid),
    Flavor.prod => AdUnitIds(
      banner: isAndroid
          ? 'ca-app-pub-7317993351535057/5734127610'
          : 'ca-app-pub-7317993351535057/9529813108',
    ),
  };
}
