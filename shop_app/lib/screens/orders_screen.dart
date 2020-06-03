import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/app_drawer.dart';
import '../providers/orders.dart';
import '../widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      // body: null,
      body: ListView.builder(
        itemBuilder: (ctx, i) => OrderItemWidget(ordersData.orders[i]),
        itemCount: ordersData.orders.length,
      ),
      drawer: AppDrawer(),
    );
  }
}
