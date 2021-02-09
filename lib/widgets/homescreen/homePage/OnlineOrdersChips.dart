import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mdukan/models/enums.dart';
import 'package:mdukan/models/providerModifier.dart';
import 'package:mdukan/widgets/homescreen/Common/mdukanChips.dart';
import 'package:provider/provider.dart';

class OnlinOrdersChips extends StatelessWidget {
  bool pending = true;
  bool inProcess = false;
  bool completed = false;
  bool cancelled = false;

  @override
  Widget build(BuildContext context) {
    if (Provider.of<ProviderModifier>(context, listen: true)
            .onlineOrderStatus ==
        OnlineOrderStatus.pending) {
      pending = true;
      inProcess = false;
      completed = false;
      cancelled = false;
    } else if (Provider.of<ProviderModifier>(context, listen: true)
            .onlineOrderStatus ==
        OnlineOrderStatus.inProcess) {
      pending = false;
      inProcess = true;
      completed = false;
      cancelled = false;
    } else if (Provider.of<ProviderModifier>(context, listen: true)
            .onlineOrderStatus ==
        OnlineOrderStatus.completed) {
      pending = false;
      inProcess = false;
      completed = true;
      cancelled = false;
    } else if (Provider.of<ProviderModifier>(context, listen: true)
            .onlineOrderStatus ==
        OnlineOrderStatus.cancelled) {
      pending = false;
      inProcess = false;
      completed = false;
      cancelled = true;
    }

    return Container(
      child: Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          mDukanChips(
            label: 'Pending',
            onSelected: () {
              Provider.of<ProviderModifier>(context, listen: false)
                  .updateOnlineOrderStatus(OnlineOrderStatus.pending);
            },
            selected: pending,
          ),
          SizedBox(
            width: 1,
          ),
          mDukanChips(
            label: 'InProcess',
            onSelected: () {
              Provider.of<ProviderModifier>(context, listen: false)
                  .updateOnlineOrderStatus(OnlineOrderStatus.inProcess);
            },
            selected: inProcess,
          ),
          SizedBox(
            width: 1,
          ),
          mDukanChips(
            label: 'Completed',
            onSelected: () {
              Provider.of<ProviderModifier>(context, listen: false)
                  .updateOnlineOrderStatus(OnlineOrderStatus.completed);
            },
            selected: completed,
          ),
          SizedBox(
            width: 1,
          ),
          mDukanChips(
            label: 'Cancelled',
            onSelected: () {
              Provider.of<ProviderModifier>(context, listen: false)
                  .updateOnlineOrderStatus(OnlineOrderStatus.cancelled);
            },
            selected: cancelled,
          ),
        ],
      ),
    );
  }
}
