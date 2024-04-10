
class UrlConstants {
  static const baseUrlProd = "https://apiRealNoFake.es/api/v1/";
  static const baseUrlDev = "http://localhost:8080/api/v1/" ;

  static String getBaseUrl (String? flavor){
    return flavor == "prod"? baseUrlProd : baseUrlDev;
  }

}