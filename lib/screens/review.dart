import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../widgets/info_card.dart';
import './screens/review.dart';

class Review extends StatefulWidget {
  @override
  ReviewState createState() {
    return new ReviewState();
  }
}
class ReviewState extends State<Review> {
  final Reviews _reviewsStore = Reviews();
  final TextEditingController _commentController = TextEditingController();
  final List<int> _stars = [1, 2, 3, 4, 5];
  int _selectedStar;
  @override
  void initState() {
    _selectedStar = null;
    _reviewsStore.initReviews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Review() //previously MyHomePage(),
    );
  }
}