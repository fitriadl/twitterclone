class AppwriteConstants {
  static const String databaseId = '6458a372b27ca564dd82';
  static const String projectId = '645882b081ce69360948';
  static const String endPoint = 'https://baas.pasarjepara.com/v1';

  static const String usersCollection = '649000f57590aec4d32c';
  static const String tweetsCollection = '64a8060749f17bad616c';

  static const String imageBucket = '64a81b2572bcbb4abfc5';


  static String imageUrl(String imageId) =>
      '$endPoint/storage/buckets/$imageBucket/files/$imageId/view?project=$projectId&mode=admin';

}
