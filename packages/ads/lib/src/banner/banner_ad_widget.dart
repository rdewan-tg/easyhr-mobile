import 'package:ads/src/admob_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

/// Drop-in banner ad. Loads its own [BannerAd] and disposes it with the
/// widget; renders nothing while loading/failed so it never breaks layout.
class BannerAdWidget extends ConsumerStatefulWidget {
  const BannerAdWidget({super.key, this.size = AdSize.banner});

  final AdSize size;

  @override
  ConsumerState<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends ConsumerState<BannerAdWidget> {
  BannerAd? _ad;
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    final service = ref.read(adMobServiceProvider);
    final ad = BannerAd(
      size: widget.size,
      adUnitId: service.adUnitIds.banner,
      request: service.buildAdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          if (!mounted) return;
          setState(() => _isLoaded = true);
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          service.logAdEvent('Banner failed to load: ${error.message}');
        },
      ),
    );
    _ad = ad;
    ad.load();
  }

  @override
  void dispose() {
    _ad?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ad = _ad;
    if (ad == null || !_isLoaded) {
      return SizedBox(
        width: widget.size.width.toDouble(),
        height: widget.size.height.toDouble(),
      );
    }
    return SizedBox(
      width: widget.size.width.toDouble(),
      height: widget.size.height.toDouble(),
      child: AdWidget(ad: ad),
    );
  }
}
