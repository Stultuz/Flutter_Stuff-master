import 'package:flutter/material.dart';
import 'package:thingamabob/widgets/shop_item_card.dart';
import 'package:thingamabob/pages/cart_page.dart';

//for pc stuff page yung sa may navbar bot. Padagdag ng items tapos per item maglalagay ng sariling image sa assets folder
// pag naglahat ng image sa assets folder please paklicheck kung tama na png or jpeg na file format
//also after inserting image go to pubspec.yaml | then ctrl+f assets: | then pakigaya nalang ng format ng mga ginawa ko don

class PCPartsPage extends StatelessWidget {
  void _addToCart(
      BuildContext context, String name, String price, String imagePath) {
    CartPage.addItemToCart(name, price, imagePath);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$name added to the cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PC Parts Shop'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          ShopItemCard(
            name: 'Razer Keyboard and Mouse Package',
            price: '\$150',
            description: 'Malupit na Package',
            imagePath: 'assets/pc-i1.png',
            rating: '9/10',
            stock: '2',
            review: 'Recommended by the nyark man',
            addToCartCallback: () {
              _addToCart(context, 'Malupit na Package', '\$150',
                  'assets/viper_ulti.png');
            },
          ),
          ShopItemCard(
            name: 'Razer Viper Ultimate (BLACK)',
            price: '\$50',
            description: 'Mouse na malupit',
            imagePath: 'assets/pc-i2.png',
            rating: '8/10',
            stock: '10',
            review: 'woop',
            addToCartCallback: () {
              _addToCart(
                  context, 'Mouse na malupit', '\$50', 'assets/pc-i2.png');
            },
          ),
          ShopItemCard(
            name: 'Razer Kunai Hydraulic 120MM aRGB PC Fan',
            price: '\$43',
            description: 'napagkabilis',
            imagePath: 'assets/pc-i3.jpg',
            rating: '8/10',
            stock: '10',
            review: 'woosh',
            addToCartCallback: () {
              _addToCart(
                  context, 'Fans na mabilis', '\$43', 'assets/pc-i3.jpg');
            },
          ),
          ShopItemCard(
            name: 'Razer Tomahawk - Mid-Tower ATX and Mini-ITX PC Case',
            price: '\$137.99',
            description: 'Napakalaki',
            imagePath: 'assets/pc-i4.jpg',
            rating: '8/10',
            stock: '10',
            review: 'woosh',
            addToCartCallback: () {
              _addToCart(
                  context, 'Case na Malaki', '\$137.99', 'assets/pc-i3.jpg');
            },
          ),
          ShopItemCard(
            name: 'Razer Blade 15 - Gaming Laptop',
            price: '\$2299',
            description: 'Super Portable Laptop',
            imagePath: 'assets/pc-i5.jpg',
            rating: '8/10',
            stock: '10',
            review: 'woosh',
            addToCartCallback: () {
              _addToCart(
                  context, 'Laptop na Malupet', '\$2299', 'assets/pc-i5.jpg');
            },
          ),
          ShopItemCard(
            name: 'Razer Keyboard',
            price: '\$39',
            description: 'Malupet na Keyboard',
            imagePath: 'assets/pc-i6.jpg',
            rating: '8/10',
            stock: '10',
            review: 'woosh',
            addToCartCallback: () {
              _addToCart(
                  context, 'Malupet na Keyboard', '\$39', 'assets/pc-i6.jpg');
            },
          ),
          ShopItemCard(
            name:
                'ASRock x Razer: New Razer Taichi Edition X570 and B550 AMD Motherboard',
            price: '\$150',
            description: 'Malupet na Motherboard',
            imagePath: 'assets/pc-i7.jpg',
            rating: '8/10',
            stock: '10',
            review: 'woosh',
            addToCartCallback: () {
              _addToCart(context, 'Malupet na Motherboard', '\$150',
                  'assets/pc-i7.jpg');
            },
          ),
          ShopItemCard(
            name: 'PC Power Supply Unit - Razer Katana PSU',
            price: '\$70',
            description: 'Malupet na PSU',
            imagePath: 'assets/pc-i8.jpg',
            rating: '8/10',
            stock: '10',
            review: 'woosh',
            addToCartCallback: () {
              _addToCart(context, 'Malupet na PSU', '\$70', 'assets/pc-i8.jpg');
            },
          ),
          ShopItemCard(
            name: 'Razer Hanbo Chroma 240MM AIO Liquid Cooler (ARGB Pump Cap)',
            price: '\$89',
            description: 'Malupet na AIO',
            imagePath: 'assets/pc-i9.jpg',
            rating: '8/10',
            stock: '10',
            review: 'woosh',
            addToCartCallback: () {
              _addToCart(context, 'Malupet na AIO', '\$89', 'assets/pc-i9.jpg');
            },
          ),
          ShopItemCard(
            name: 'Gaming Headset - The Razer Kraken Family',
            price: '\$39 - 50',
            description: 'Malupet na Headset',
            imagePath: 'assets/pc-i10.jpg',
            rating: '8/10',
            stock: '10',
            review: 'woosh',
            addToCartCallback: () {
              _addToCart(context, 'Malupet na Headset', '\$39 - 50',
                  'assets/pc-i10.jpg');
            },
          ),
          ShopItemCard(
            name: 'Streamer Microphone - Razer Seiren Series',
            price: '\$25 -49',
            description: 'Malupet na Mic',
            imagePath: 'assets/pc-i11.jpg',
            rating: '8/10',
            stock: '10',
            review: 'woosh',
            addToCartCallback: () {
              _addToCart(
                  context, 'Malupet na Mic', '\$25 -49', 'assets/pc-i11.jpg');
            },
          ),
          // dito lagay items copy the format
        ],
      ),
    );
  }
}
