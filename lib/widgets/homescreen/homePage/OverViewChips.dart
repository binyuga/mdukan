import 'package:flutter/material.dart';

import 'package:mdukan/models/enums.dart';
import 'package:mdukan/models/providerModifier.dart';
import 'package:mdukan/widgets/homescreen/Common/mdukanChips.dart';
import 'package:provider/provider.dart';

class OverViewChips extends StatelessWidget {
  bool today;
  bool weekAgo;
  bool past;

  @override
  Widget build(BuildContext context) {
    if (Provider.of<ProviderModifier>(context, listen: true)
            .overViewCategories ==
        OverViewCategories.today) {
      today = true;
      weekAgo = false;
      past = false;
    } else if (Provider.of<ProviderModifier>(context, listen: true)
            .overViewCategories ==
        OverViewCategories.weekAgo) {
      today = false;
      weekAgo = true;
      past = false;
    } else if (Provider.of<ProviderModifier>(context, listen: true)
            .overViewCategories ==
        OverViewCategories.past) {
      today = false;
      weekAgo = false;
      past = true;
    }
    return Wrap(
      children: <Widget>[
        mDukanChips(
          label: 'Today',
          selected: today,
          onSelected: () {
            Provider.of<ProviderModifier>(context, listen: false)
                .updateOverViewCategory(OverViewCategories.today);
          },
        ),
        SizedBox(
          width: 5,
        ),
        mDukanChips(
          label: 'Week Ago',
          selected: weekAgo,
          onSelected: () {
            Provider.of<ProviderModifier>(context, listen: false)
                .updateOverViewCategory(OverViewCategories.weekAgo);
          },
        ),
        SizedBox(
          width: 5,
        ),
        mDukanChips(
          selected: past,
          label: 'Past',
          onSelected: () {
            Provider.of<ProviderModifier>(context, listen: false)
                .updateOverViewCategory(OverViewCategories.past);
          },
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
