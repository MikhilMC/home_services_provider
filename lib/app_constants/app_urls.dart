class AppUrls {
  static const String baseUrl = "https://nkdz72g4-8002.inc1.devtunnels.ms";
  static const String serviceUrl = "$baseUrl/service";

  static const String serviceProviderRegistrationUrl =
      "$serviceUrl/service_registration/";
  static const String getCategoriesUrl = "$serviceUrl/view_categories/";
  static const String getSubServicesUrl = "$serviceUrl/view_services/";
  static const String addServicesUrl = "$serviceUrl/add_services/";

  static const String serviceProviderLoginUrl = "$serviceUrl/login/";

  static const String getProfileDetailsUrl =
      "$serviceUrl/view_service_provider_profile/";
  static const String getProviderServicesUrl =
      "$serviceUrl/view_provider_services/";
  static const String getBookingsUrl = "$serviceUrl/view_bookings/";
  static const String getServicesHistoryUrl =
      "$serviceUrl/provider_booking_history/";

  static const String getServiceProviderSlotsUrl = "$serviceUrl/view_slots/";
  static const String addAvailabilitySlotsUrl =
      "$serviceUrl/service_available_time/";

  static const String getWorkDetailsUrl = "$serviceUrl/single_booking/";
  static const String startWorkUrl = "$serviceUrl/status_ongoing/";

  static const String getUserReviewsUrl = "$serviceUrl/provider_view_reviews/";

  static const String getLast10WorksUrl = "$serviceUrl/last_10_works/";
  static const String getLast15DaysEarningsUrl =
      "$serviceUrl/service_provider_15days/";
  static const String getTotalEarningsUrl =
      "$serviceUrl/service_provider_earnings/";
}
