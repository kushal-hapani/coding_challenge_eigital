import 'dart:io';

class ConstantString {
  static const String subscriptionIdAndroid = "ai_home_decor_subscription";
  static const String weeklyPlanAndroid = "ai-home-decor-weekly";
  static const String monthlyPlanAndroid = "ai-home-decor-monthly";
  static const String yearlyPlanAndroid = "ai-home-decor-yearly";
  static const String weeklyPlanIOS = "ai.decore.weekly";
  static const String monthlyPlanIOS = "ai.decore.monthly";
  static const String yearlyPlanIOS = "ai.decore.yearly";

  static String weeklyPlan = Platform.isIOS ? weeklyPlanIOS : weeklyPlanAndroid;
  static String monthlyPlan = Platform.isIOS
      ? monthlyPlanIOS
      : monthlyPlanAndroid;
  static String yearlyPlan = Platform.isIOS ? yearlyPlanIOS : yearlyPlanAndroid;

  static const String appName = "AI Home Decor & Design Planner";

  static const String promocode = "QK9BM";

  static const String defaultApiBaseUrl = "https://beatmaster.co.in";

  static const String privacyPolicyUrl =
      "https://kglab.tech.blog/";
  static const String termsOfUseUrl =
      "https://kglab.tech.blog/";
}
