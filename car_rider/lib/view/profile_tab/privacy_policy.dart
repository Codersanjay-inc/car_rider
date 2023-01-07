import 'package:car_rider/res/styles.dart';
import 'package:car_rider/res/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Privacy Policy",
      ),
      body: Container(
        margin: const EdgeInsets.all(21),
        child: Text(
          "Lorem ipsum dolor sit amet"
          "Consectetur adipiscing elit. Natoque phasellus lobortis mattis cursus faucibus hac proin risus. Turpis phasellus massa ullamcorper volutpat."
          "Ornare commodo non integer fermentum nisi, morbi id. Vel tortor mauris feugiat amet, maecenas"
          "facilisis risus, in faucibus. Vestibulum ullamcorper fames eget enim diam fames faucibus duis ac."
          " Aliquam non tellus semper in dignissim nascetur venenatis lacus."
          "Lorem ipsum dolor sit amet"
          "Lectus vel non varius interdum vel tellus sed mattis. Sit laoreet auctor arcu mauris tincidunt sociis"
          ""
          "tristique pharetra neque. Aliquam pharetra elementum nisl sapien. Erat nisl morbi eu dolor in"
          "Sapien ut lacus dui libero morbi tristique."
          "Lorem ipsum dolor sit amet"
          "Sit praesent mi, dolor, magna in pellentesque sollicitudin odio sed."
          "Sit nibh aliquam enim ipsum lectus sem fermentum congue velit. Purus habitant odio in morbi aliquet"
          "velit pulvinar. Facilisis ut amet interdum pretium. Fames pretium eget orci facilisis mattis "
          "est libero facilisis ullamcorper. Est auctor amet egestas risus libero et. Auctor faucibus "
          "sit id fringilla vitae. Ac volutpat sodales tristique ut netus turpis."
          "Lorem ipsum dolor sit amet, consectetur. Facilisis ut amet interdum pretium."
          "Fames pretium eget orci facilisis mattis est libero facilisis ullamcorper."
          "Est auctor amet egestas risus libero et. Auctor faucibus sit id fringilla vitae."
          " Ac volutpat sodales tristique ut netus turpis.",
          style: bodyText16normal(color: Colors.black),
        ),
      ),
    );
  }
}
