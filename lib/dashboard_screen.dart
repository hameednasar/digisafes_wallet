import 'package:flutter/material.dart';
import 'wallet_screen.dart';
import 'swap_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('DIGISAFES'),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: Image.asset(
                'images/WhatsApp Image 2023-03-02 at 1.33.27 PM.jpeg'),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Morning\nMr Artesto',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            Text('Balance: USD 18220.40 (+9.85%)',
                style: TextStyle(fontSize: 16, color: Colors.greenAccent)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildActionButton(context, 'Sent', Icons.send, WalletScreen()),
                _buildActionButton(
                    context, 'Receive', Icons.download, WalletScreen()),
                _buildActionButton(
                    context, 'Swap', Icons.swap_horiz, SwapScreen()),
              ],
            ),
            SizedBox(height: 30),
            Text('Market Statistics',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView(
                children: [
                  _buildCryptoRow('Bitcoin', 'BTC', '\$29,000.00', '+3.4%'),
                  _buildCryptoRow('Ethereum', 'ETH', '\$1,800.00', '+2.1%'),
                  _buildCryptoRow('Cardano', 'ADA', '\$0.30', '+5.3%'),
                  _buildCryptoRow('Polkadot', 'DOT', '\$6.59', '+2.9%'),
                  _buildCryptoRow('Ripple', 'XRP', '\$0.50', '+1.5%'),
                  _buildCryptoRow('Litecoin', 'LTC', '\$80.00', '+4.0%'),
                  _buildCryptoRow('Chainlink', 'LINK', '\$8.25', '+3.1%'),
                  _buildCryptoRow('Stellar', 'XLM', '\$0.10', '+1.8%'),
                  _buildCryptoRow('Bitcoin Cash', 'BCH', '\$200.00', '+2.0%'),
                  _buildCryptoRow('Monero', 'XMR', '\$150.00', '+3.5%'),
                  _buildCryptoRow('Dogecoin', 'DOGE', '\$0.06', '+6.0%'),
                  _buildCryptoRow('Solana', 'SOL', '\$22.00', '+4.2%'),
                  _buildCryptoRow('USD Coin', 'USDC', '\$1.00', '0.0%'),
                  _buildCryptoRow('Shiba Inu', 'SHIB', '\$0.00001', '+10.0%'),
                  _buildCryptoRow('TRON', 'TRX', '\$0.08', '+2.6%'),
                  _buildCryptoRow(
                      'Ethereum Classic', 'ETC', '\$18.00', '+1.0%'),
                  _buildCryptoRow('Avalanche', 'AVAX', '\$14.50', '+4.7%'),
                  _buildCryptoRow('VeChain', 'VET', '\$0.02', '+3.0%'),
                  _buildCryptoRow('Aave', 'AAVE', '\$65.00', '+2.8%'),
                  _buildCryptoRow('Cosmos', 'ATOM', '\$10.00', '+5.1%'),
                  _buildCryptoRow('Fantom', 'FTM', '\$0.25', '+4.9%'),
                  _buildCryptoRow('EOS', 'EOS', '\$1.20', '+3.2%'),
                  _buildCryptoRow('Zcash', 'ZEC', '\$50.00', '+2.5%'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(
      BuildContext context, String label, IconData icon, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blueAccent,
            child: Icon(icon, color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(label, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildCryptoRow(
      String name, String symbol, String price, String change) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                child: Text(symbol[0]),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontSize: 16)),
                  Text(symbol, style: TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(price, style: TextStyle(fontSize: 16)),
              Text(change,
                  style: TextStyle(
                      color:
                          change.startsWith('+') ? Colors.green : Colors.red)),
            ],
          ),
        ],
      ),
    );
  }
}
