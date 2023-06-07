///
/// Words or phrases describing the current user activity.
///
const List<String> keywords = ['Student', 'loan'];

/// URL string for a webpage whose content matches the app’s primary content.
///
/// This webpage content is used for targeting and brand safety purposes.
///
const String contentUrl = 'https://studyloan.forexnews.trade';

///
/// Max Failed Load Attempts Ads
///
const int maxFailedLoadAttempts = 10;

///
/// The time Interstitial Ads showing
///
const int adsPeriodicTimer = 1;

///
/// Banner ads unit ID
///
const String bannerAdUnitIdAndroid = 'ca-app-pub-1075557487169564/5487489495';
const String bannerAdUnitIdiOS = 'ca-app-pub-1075557487169564/6494337451';

///
/// Interstitial ads unit ID
///
const String interstitialAdUnitIdAndroid = 'ca-app-pub-1075557487169564/6608999472';
const String interstitialAdUnitIdiOS = 'ca-app-pub-1075557487169564/8091270409';

///
/// Rewarded Ads unit ID
///
const String rewardedAdUnitIdAndroid = 'ca-app-pub-1075557487169564/5140877279';
const String rewardedAdUnitIdiOS = 'ca-app-pub-1075557487169564/6778188736';

///
/// Rewarded Interstitial Ads unit ID
///
const String rewardedInterstitialAdUnitIdAndroid = 'ca-app-pub-1075557487169564/2514713939';
const String rewardedInterstitialAdUnitIdiOS = 'ca-app-pub-1075557487169564/8050961701';

/// This configs for hide/show Ads banner in bottom screen, or above bottom app bar
///
/// You can add this code to any Scaffold widget to show banner
///
/// ```dart
///   persistentFooterButtons: persistentFooterButtons(Provider.of<AuthStore>(context)),
/// ```
///
const Map<String, bool> bannerAdsOptions = {
  'home': true,
  'post_list': true,
  'post_category': true,
  'post_author': true,
  'post': true,
};

/// This configs for hide/show Ads banner in bottom screen, or above bottom app bar
///
/// You can add InterstitialAdsMixin mixin to any screen then call function showAds();
///
const Map<String, bool> interstitialAdsOptions = {
  'home': true,
  'post_list': true,
  'post_category': true,
  'post_author': true,
  'post': true,
};

/// This options for hide/show Reward ads feature
///
const Map<String, bool> rewardAdsOptions = {
  'post': false,
};
