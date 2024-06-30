import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReviewPage1 extends StatelessWidget {
  const ReviewPage1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController reviewControlar = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white38,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_outlined),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Write a Review",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const CircleAvatar(
              radius: 100,
              foregroundImage: AssetImage(
                  "assets/1704404104315-ai-brush-removebg-5cwxzl7l.png"),
            ),
            const SizedBox(
              height: 8,
            ),
            RichText(
              text: const TextSpan(
                text: "How was your Experience\n           with",
                style: TextStyle(color: Colors.black, fontSize: 18),
                children: [
                  TextSpan(
                    text: " dev zafi?",
                    style: TextStyle(color: Colors.amber, fontSize: 18),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 170,
              child: RatingBar(
                filledIcon: Icons.star,
                emptyIcon: Icons.star_border,
                onRatingChanged: (value) => debugPrint('$value'),
                initialRating: 3,
                maxRating: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Write a comment ",
                    style: TextStyle(color: Colors.black38),
                  ),
                  Text("255 max word ",
                      style: TextStyle(
                        color: Colors.black38,
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
              child: TextField(
                controller: reviewControlar,
                maxLines: 3,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    // labelText: "Write your Review",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Write your Review"),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            GestureDetector(
              onTap: () {
                print("This is text $reviewControlar");
              },
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text("Submit review",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
