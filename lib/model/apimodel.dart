
class LoginModel{
  final email;
  final password;

  LoginModel({
    required this.email,
    required this.password,
});

  factory LoginModel.fromjson(Map<String, dynamic>json)=>LoginModel(
      email: json["email"],
      password:json["Password"],
  );
}