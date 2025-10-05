
class RegisterRequestModel {
  String name;
  String email;
  String password;
  String passwordConfirmation;
  String? city;

  RegisterRequestModel({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    this.city,
  });

  toMap() {
    return {
      "name": name,
      "email": email,
      "password": password,
      "password_confirmation": passwordConfirmation,
      "city": city,
    };
  }
}
