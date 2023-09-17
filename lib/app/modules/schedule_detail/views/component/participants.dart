import 'package:contactbook/app/modules/schedule_detail/model/Participent.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';

import '../../../create_schedule/views/component/participant.dart';

Widget participants(List<Participent> participent) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_14_700("Participants"),
      SizedBox(
        height: 4,
      ),
      ListView.builder(
        shrinkWrap: true,

        itemCount: participent.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return participantItem(participent[index].id.toString(), () {});
        },
      )
    ],
  );
}
