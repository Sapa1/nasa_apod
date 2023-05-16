class StringUtils {
  StringUtils._();

  static String getImageNameFromUrl(String image) {
    final uri = Uri.parse(image);
    return uri.path;
  }
}
