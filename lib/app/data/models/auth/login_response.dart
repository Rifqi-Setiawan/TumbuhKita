// lib/app/data/models/auth/login_response.dart
class LoginResponse {
  final String token; // access token JWT
  final User user;

  const LoginResponse({required this.token, required this.user});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['token'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );
  }
}

class User {
  final int id;
  final String username;
  final String email;
  final bool isApproved;
  final String role;

  const User({
    required this.id,
    required this.username,
    required this.email,
    required this.isApproved,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      isApproved: json['is_approved'] as bool? ?? false,
      role: json['role']?.toString() ?? '',
    );
  }
}
