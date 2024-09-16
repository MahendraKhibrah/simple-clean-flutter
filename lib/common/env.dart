enum Env { dev, prod }

abstract class AppEnv {
  static late Env _env;
  static late String title;
  static late String baseMainUrl;
  static late String factUrl;
  static late String breedUrl;

  static Env get env => _env;

  static setupEnv(Env env) {
    _env = env;
    switch (env) {
      case Env.dev:
        title = 'Cat Fact Dev';
        baseMainUrl = 'https://catfact.ninja';
        factUrl = '$baseMainUrl/fact';
        breedUrl = '$baseMainUrl/breeds';
        break;
      case Env.prod:
        title = 'Cat Fact';
        baseMainUrl = 'https://prod.catfact.ninja/fact';
        factUrl = '$baseMainUrl/fact';
        breedUrl = '$baseMainUrl/breeds';
        break;
    }
  }
}
