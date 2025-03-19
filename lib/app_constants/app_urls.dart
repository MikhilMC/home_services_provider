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

  static const String getServiceProviderSlotsUrl = "$serviceUrl/view_slots/";
  static const String addAvailabilitySlotsUrl =
      "$serviceUrl/service_available_time/";
}
