import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        title: Text('Wallet'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Credit', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 10),
                    Text('\$246,084.21',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Deposit'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Withdraw'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildTransactionRow('Bitcoin', '\$128,966.43', 'Sent'),
                  _buildTransactionRow('Ethereum', '\$40,557.56', 'Sent'),
                  _buildTransactionRow('Ripple', '\$4,321.02', 'Received'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionRow(String name, String amount, String status) {
    return ListTile(
      leading: Icon(Icons.account_balance_wallet, color: Colors.white),
      title: Text(name),
      subtitle: Text(status, style: TextStyle(color: Colors.grey)),
      trailing: Text(amount, style: TextStyle(color: Colors.white)),
    );
  }
}
