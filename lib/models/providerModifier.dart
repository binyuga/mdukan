import 'package:flutter/widgets.dart';
import 'package:mdukan/models/OnlineOrdersData.dart';
import 'package:mdukan/models/OverViewData.dart';

import 'enums.dart';

class ProviderModifier extends ChangeNotifier {
  //pageControllerProvider
  int pageNo = 2;
  PageController pageController;

  void addPageController(PageController pageController) {
    this.pageController = pageController;
    notifyListeners();
  }

  void changePageNo(int pageNo) {
    this.pageNo = pageNo;
    notifyListeners();
  }

  //OverViewDataModifier
  OverViewData overViewData;
  OverViewCategories overViewCategories = OverViewCategories.today;
  double pricesAndQuantityFontSizeOfflineCustomers = 30;
  double pricesAndQuantityFontSizeOfflineRevenue = 30;
  double pricesAndQuantityFontSizeTotalCustomers = 30;
  double pricesAndQuantityFontSizeTotalRevenue = 30;
  double pricesAndQuantityFontSizeOnlineCustomers = 30;
  double pricesAndQuantityFontSizeOnlineRevenue = 30;

  void modifyOverViewData(
      {double offlineCustomers,
      double offlineRevenue,
      double onlineOrders,
      double onlineRevenue}) {
    if (offlineCustomers >= 10000) {
      setPricesAndQuantityFontSizeOfflineCustomers(24);
      if (offlineCustomers >= 100000) {
        setPricesAndQuantityFontSizeOfflineCustomers(20);
      }
    }
    if (offlineRevenue >= 10000) {
      setPricesAndQuantityFontSizeOfflineRevenue(24);
      if (offlineRevenue >= 100000) {
        setPricesAndQuantityFontSizeOfflineRevenue(20);
      }
    }
    if (onlineOrders >= 10000) {
      setPricesAndQuantityFontSizeOnlineCustomers(24);
      if (onlineOrders >= 100000) {
        setPricesAndQuantityFontSizeOnlineCustomers(20);
      }
    }
    if (onlineRevenue >= 10000) {
      setPricesAndQuantityFontSizeOnlineRevenue(24);
      if (onlineRevenue >= 100000) {
        setPricesAndQuantityFontSizeOnlineRevenue(20);
      }
    }
    double totalSale = offlineCustomers + onlineOrders;
    if (totalSale >= 10000) {
      setPricesAndQuantityFontSizeTotalCustomers(24);
      if (totalSale >= 100000) {
        setPricesAndQuantityFontSizeTotalCustomers(20);
      }
    }
    double totalRevenue = offlineRevenue + onlineRevenue;
    if (totalRevenue >= 10000) {
      setPricesAndQuantityFontSizeTotalRevenue(24);
      if (totalRevenue >= 100000) {
        setPricesAndQuantityFontSizeTotalRevenue(20);
      }
    }
    overViewData = OverViewData(offlineCustomers, offlineRevenue, totalSale,
        totalRevenue, onlineOrders, onlineRevenue);
    // notifyListeners();
  }

  void setPricesAndQuantityFontSizeOfflineCustomers(double value) async {
    pricesAndQuantityFontSizeOfflineCustomers = value;
    //notifyListeners();
  }

  void setPricesAndQuantityFontSizeOfflineRevenue(double value) async {
    pricesAndQuantityFontSizeOfflineRevenue = value;
    //notifyListeners();
  }

  void setPricesAndQuantityFontSizeOnlineCustomers(double value) async {
    pricesAndQuantityFontSizeOnlineCustomers = value;
    //notifyListeners();
  }

  void setPricesAndQuantityFontSizeOnlineRevenue(double value) async {
    pricesAndQuantityFontSizeOnlineRevenue = value;
    //notifyListeners();
  }

  void setPricesAndQuantityFontSizeTotalCustomers(double value) async {
    pricesAndQuantityFontSizeTotalCustomers = value;
    // notifyListeners();
  }

  void setPricesAndQuantityFontSizeTotalRevenue(double value) async {
    pricesAndQuantityFontSizeTotalRevenue = value;
    //notifyListeners();
  }

  void updateOverViewCategory(OverViewCategories value) async {
    overViewCategories = value;
    notifyListeners();
  }

  //Online Orders Data Modifier

  List<OnlineOrdersData> pending = [];
  List<OnlineOrdersData> inProcess = [];
  List<OnlineOrdersData> completed = [];
  List<OnlineOrdersData> cancelled = [];
  OnlineOrderStatus onlineOrderStatus = OnlineOrderStatus.pending;
  OnlineOrdersData onlineOrdersData;

  void updateOnlineOrderStatus(OnlineOrderStatus newStatus) {
    onlineOrderStatus = newStatus;
    notifyListeners();
  }

  void addDataOfOnlineOrders(
      {String orderName,
      String orderId,
      List<String> orderDetails,
      OnlineOrderStatus orderStatus,
      double billingAmount}) {
    if (orderStatus == OnlineOrderStatus.pending) {
      onlineOrdersData = OnlineOrdersData(
          orderName: orderName,
          orderId: orderId,
          orderBillingAmount: billingAmount,
          orderList: orderDetails,
          orderStatus: orderStatus);
      pending.add(onlineOrdersData);
    } else if (orderStatus == OnlineOrderStatus.inProcess) {
      onlineOrdersData = OnlineOrdersData(
          orderName: orderName,
          orderId: orderId,
          orderBillingAmount: billingAmount,
          orderList: orderDetails,
          orderStatus: orderStatus);
      inProcess.add(onlineOrdersData);
    } else if (orderStatus == OnlineOrderStatus.completed) {
      onlineOrdersData = OnlineOrdersData(
          orderName: orderName,
          orderId: orderId,
          orderBillingAmount: billingAmount,
          orderList: orderDetails,
          orderStatus: orderStatus);
      completed.add(onlineOrdersData);
    } else if (orderStatus == OnlineOrderStatus.cancelled) {
      onlineOrdersData = OnlineOrdersData(
          orderName: orderName,
          orderId: orderId,
          orderBillingAmount: billingAmount,
          orderList: orderDetails,
          orderStatus: orderStatus);
      cancelled.add(onlineOrdersData);
    }
    // notifyListeners();
  }

  // void toggleOnlineOrderStatus(
  //     int index,
  //     OnlineOrderStatus targetedOnlineOrderStatus,
  //     OnlineOrderStatus currentOnlineOrderStatus) {
  //   if (targetedOnlineOrderStatus == OnlineOrderStatus.inProcess) {
  //     //toggling to targeted category of in process
  //     if (currentOnlineOrderStatus == OnlineOrderStatus.pending) {
  //       //toggling to in process from pending
  //       OnlineOrdersData onlineOrdersData = pending.elementAt(index);
  //       pending.removeAt(index);
  //       onlineOrdersData.orderStatus = OnlineOrderStatus.inProcess;
  //       inProcess.add(onlineOrdersData);
  //     } else if (currentOnlineOrderStatus == OnlineOrderStatus.cancelled) {
  //       //toggling to in process from cancelled
  //       OnlineOrdersData onlineOrdersData = cancelled.elementAt(index);
  //       cancelled.removeAt(index);
  //       onlineOrdersData.orderStatus = OnlineOrderStatus.inProcess;
  //       inProcess.add(onlineOrdersData);
  //     } else if (currentOnlineOrderStatus == OnlineOrderStatus.completed) {
  //       //toggling to in process from completed
  //       OnlineOrdersData onlineOrdersData = completed.elementAt(index);
  //       completed.removeAt(index);
  //       onlineOrdersData.orderStatus = OnlineOrderStatus.inProcess;
  //       inProcess.add(onlineOrdersData);
  //     }
  //   } else if (targetedOnlineOrderStatus == OnlineOrderStatus.completed) {
  //     //toggling to targeted category of completed
  //     if (currentOnlineOrderStatus == OnlineOrderStatus.pending) {
  //       //toggling to in process from pending
  //       OnlineOrdersData onlineOrdersData = pending.elementAt(index);
  //       pending.removeAt(index);
  //       onlineOrdersData.orderStatus = OnlineOrderStatus.completed;
  //       completed.add(onlineOrdersData);
  //     } else if (currentOnlineOrderStatus == OnlineOrderStatus.cancelled) {
  //       //toggling to in process from cancelled
  //       OnlineOrdersData onlineOrdersData = cancelled.elementAt(index);
  //       cancelled.removeAt(index);
  //       onlineOrdersData.orderStatus = OnlineOrderStatus.completed;
  //       completed.add(onlineOrdersData);
  //     } else if (currentOnlineOrderStatus == OnlineOrderStatus.inProcess) {
  //       //toggling to in process from completed
  //       OnlineOrdersData onlineOrdersData = inProcess.elementAt(index);
  //       inProcess.removeAt(index);
  //       onlineOrdersData.orderStatus = OnlineOrderStatus.completed;
  //       completed.add(onlineOrdersData);
  //     }
  //   } else if (targetedOnlineOrderStatus == OnlineOrderStatus.cancelled) {
  //     //toggling to targeted category of cancelled
  //     if (currentOnlineOrderStatus == OnlineOrderStatus.pending) {
  //       //toggling to in process from pending
  //       OnlineOrdersData onlineOrdersData = pending.elementAt(index);
  //       pending.removeAt(index);
  //       onlineOrdersData.orderStatus = OnlineOrderStatus.cancelled;
  //       cancelled.add(onlineOrdersData);
  //     } else if (currentOnlineOrderStatus == OnlineOrderStatus.completed) {
  //       //toggling to in process from cancelled
  //       OnlineOrdersData onlineOrdersData = completed.elementAt(index);
  //       completed.removeAt(index);
  //       onlineOrdersData.orderStatus = OnlineOrderStatus.cancelled;
  //       cancelled.add(onlineOrdersData);
  //     } else if (currentOnlineOrderStatus == OnlineOrderStatus.inProcess) {
  //       //toggling to in process from completed
  //       OnlineOrdersData onlineOrdersData = inProcess.elementAt(index);
  //       inProcess.removeAt(index);
  //       onlineOrdersData.orderStatus = OnlineOrderStatus.cancelled;
  //       cancelled.add(onlineOrdersData);
  //     }
  //   } else if (targetedOnlineOrderStatus == OnlineOrderStatus.pending) {
  //     //toggling to targeted category of pending
  //     if (currentOnlineOrderStatus == OnlineOrderStatus.cancelled) {
  //       //toggling to in process from in process
  //       OnlineOrdersData onlineOrdersData = cancelled.elementAt(index);
  //       cancelled.removeAt(index);
  //       onlineOrdersData.orderStatus = OnlineOrderStatus.pending;
  //       pending.add(onlineOrdersData);
  //     } else if (currentOnlineOrderStatus == OnlineOrderStatus.completed) {
  //       //toggling to in process from completed
  //       OnlineOrdersData onlineOrdersData = completed.elementAt(index);
  //       completed.removeAt(index);
  //       onlineOrdersData.orderStatus = OnlineOrderStatus.pending;
  //       pending.add(onlineOrdersData);
  //     } else if (currentOnlineOrderStatus == OnlineOrderStatus.inProcess) {
  //       //toggling to in process from completed
  //       OnlineOrdersData onlineOrdersData = inProcess.elementAt(index);
  //       inProcess.removeAt(index);
  //       onlineOrdersData.orderStatus = OnlineOrderStatus.pending;
  //       pending.add(onlineOrdersData);
  //     }
  //   }
  //   notifyListeners();
  // }

  void deleteOnlineOrder(int index) {
    if (onlineOrderStatus == OnlineOrderStatus.pending) {
      pending.removeAt(index);
    } else if (onlineOrderStatus == OnlineOrderStatus.inProcess) {
      inProcess.removeAt(index);
    } else if (onlineOrderStatus == OnlineOrderStatus.completed) {
      completed.removeAt(index);
    } else if (onlineOrderStatus == OnlineOrderStatus.cancelled) {
      cancelled.removeAt(index);
    }
    //notifyListeners();
  }

  //

}
