import 'package:flutter_prac5/models/feedback.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FeedbackService {
  static Future<void> saveFeedback(UserFeedback feedback) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final feedbackList = prefs.getStringList('feedbacks') ?? [];
      
      feedbackList.add(feedback.toString());
      await prefs.setStringList('feedbacks', feedbackList);
    } catch (e) {
      throw Exception('Failed to save feedback: ${e.toString()}');
    }
  }

  static Future<List<String>> getAllFeedbacks() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getStringList('feedbacks') ?? [];
    } catch (e) {
      throw Exception('Failed to get feedbacks: ${e.toString()}');
    }
  }
}

