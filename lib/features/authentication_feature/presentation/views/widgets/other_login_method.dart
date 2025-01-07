import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_login_method_button.dart';

class OtherAuthenticationMethods extends StatelessWidget {
  const OtherAuthenticationMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomLoginMethodButton(
          onTap: () {},
          icon: FontAwesomeIcons.google,
        ),
        CustomLoginMethodButton(
          onTap: () {},
          icon: FontAwesomeIcons.squareFacebook,
        ),
        CustomLoginMethodButton(
          onTap: () {},
          icon: FontAwesomeIcons.instagram,
        ),
      ],
    );
  }
}
