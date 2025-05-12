class UserFeedback {
  final String name;
  final String email;
  final String feedback;
  final double rating;
  final DateTime timestamp;

  UserFeedback({
    required this.name,
    required this.email,
    required this.feedback,
    required this.rating,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'feedback': feedback,
      'rating': rating.toString(),
      'timestamp': timestamp.toIso8601String(),
    };
  }

  @override
  String toString() {
    return toMap().toString();
  }
}

