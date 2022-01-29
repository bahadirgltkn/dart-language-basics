class ProductConfig {
  static final ProductConfig instance = ProductConfig._('aa');

  final String apiKey;

  ProductConfig._(this.apiKey);
}
