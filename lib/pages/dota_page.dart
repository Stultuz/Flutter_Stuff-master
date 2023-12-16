import 'package:flutter/material.dart';
import 'package:thingamabob/widgets/shop_item_card.dart';
import 'package:thingamabob/pages/cart_page.dart';

//for dota items page yung sa may navbar bot. Padagdag ng items tapos per item maglalagay ng sariling image sa assets folder
// pag naglahat ng image sa assets folder please paklicheck kung tama na png or jpeg na file format
//also after inserting image go to pubspec.yaml | then ctrl+f assets: | then pakigaya nalang ng format ng mga ginawa ko don

class DotaPage extends StatelessWidget {
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
        title: Text('Dota Shop'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          ShopItemCard(
            name: 'Serac The Seal',
            price: '\₱ 67.62',
            description: 'Your very own Pet Seal to bring your items',
            imagePath: 'assets/dota-i1.png',
            rating: '10/10',
            stock: '47,562',
            review: 'Very gud boi',
            addToCartCallback: () {
              _addToCart(
                  context, 'Serac The Seal', '\₱ 67.62', 'assets/dota-i1.png');
            },
          ),
          ShopItemCard(
            name: 'Floe\'s Tower Ward',
            price: '\₱ 17.10',
            description: 'dangbigat',
            imagePath: 'assets/dota-i2.png',
            rating: '10/10',
            stock: '188,251',
            review: '10 because Seals',
            addToCartCallback: () {
              _addToCart(context, 'Floe\'s Tower Ward', '\₱ 17.10',
                  'assets/dota-i2.png');
            },
          ),
          ShopItemCard(
            name: 'Mistress of the Long Night Set',
            price: '\₱ 70.23',
            description:
                'Contains the Mistress of the Long Night set for Death Prophet',
            imagePath: 'assets/dota-i3.png',
            rating: '6/10',
            stock: '43,591',
            review: 'Frostivus Event ripbozo reward',
            addToCartCallback: () {
              _addToCart(context, 'Mistress of the Long Night Set', '\₱ 70.23',
                  'assets/dota-i3.png');
            },
          ),
          ShopItemCard(
            name: 'First Night of the Summer Child',
            price: '\₱ 64.12',
            description:
                'Contains the First Night of the Summer Child set for Enchantress, including the Loading Screen',
            imagePath: 'assets/dota-i4.png',
            rating: '7/10',
            stock: '65,541',
            review: 'Frostivus Event ripbozo reward(2)',
            addToCartCallback: () {
              _addToCart(context, 'First Night of the Summer Child', '\₱ 64.12',
                  'assets/dota-i4.png');
            },
          ),
          ShopItemCard(
            name: 'Powdersled Rookery',
            price: '\₱ 64.12',
            description:
                'Contains the Powdersled Rookery set for Techies, including the Loading Screen',
            imagePath: 'assets/dota-i5.png',
            rating: '6/10',
            stock: '86,554',
            review: 'Frostivus Event ripbozo reward(3)',
            addToCartCallback: () {
              _addToCart(context, 'Powdersled Rookery', '\₱ 64.12',
                  'assets/dota-i5.png');
            },
          ),
          ShopItemCard(
            name: 'Trail of the Grey Ghost',
            price: '\₱ 65.35',
            description: 'Contains the Trail of the Grey Ghost set for Lycan',
            imagePath: 'assets/dota-i6.png',
            rating: '9/10',
            stock: '86,999',
            review: 'Very good boi',
            addToCartCallback: () {
              _addToCart(context, 'Trail of the Grey Ghost', '\₱ 65.35',
                  'assets/dota-i6.png');
            },
          ),
          ShopItemCard(
            name: 'Frostreach Brigands',
            price: '\₱ 69.09',
            description: 'Contains the Frostreach Brigands set for Alchemist',
            imagePath: 'assets/dota-i7.png',
            rating: '9/10',
            stock: '47,127',
            review: 'Fish',
            addToCartCallback: () {
              _addToCart(context, 'Frostreach Brigands', '\₱ 69.09',
                  'assets/dota-i7.png');
            },
          ),
          ShopItemCard(
            name: 'Trek of the Trailblazer',
            price: '\₱ 61.00',
            description:
                'Contains the Trek of the Trailblazer set for Timbersaw',
            imagePath: 'assets/dota-i8.png',
            rating: '3/10',
            stock: '33,333',
            review: 'No Trees 4 u',
            addToCartCallback: () {
              _addToCart(context, 'Trek of the Trailblazer', '\₱ 61.00',
                  'assets/dota-i8.png');
            },
          ),
          ShopItemCard(
            name: 'Northern Blight',
            price: '\₱ 64.12',
            description: 'Contains the Northern Blight set for Invoker',
            imagePath: 'assets/dota-i9.png',
            rating: '1/10',
            stock: '361,320',
            review: 'Pangit',
            addToCartCallback: () {
              _addToCart(
                  context, 'Northern Blight', '\₱ 64.12', 'assets/dota-i9.png');
            },
          ), // Dito magdadagdag ng items kopyahin nyo nalang format sa taas
          ShopItemCard(
            name: 'Icewrack Marauder',
            price: '\₱ 68.00',
            description: 'Contains the Icewrack Marauder set for Troll Warlord',
            imagePath: 'assets/dota-i10.png',
            rating: '1/10',
            stock: '31,322',
            review: 'Kamukha ng tito mo',
            addToCartCallback: () {
              _addToCart(context, 'Icewrack Marauder', '\₱ 64.12',
                  'assets/dota-i10.png');
            },
          ), // Dito magdadagdag ng items kopyahin nyo nalang format sa taas
          ShopItemCard(
            name: 'Gingerbread Baby Roshan',
            price: '\₱ 46209.26',
            description:
                'He may look fearsome, but this little guy is sweet can be.',
            imagePath: 'assets/dota-i11.png',
            rating: 'N/A',
            stock: '3',
            review: 'Expensif',
            addToCartCallback: () {
              _addToCart(context, 'Gingerbread Baby Roshan', '\₱ 46209.26',
                  'assets/dota-i11.png');
            },
          ), // Dito magdadagdag ng items kopyahin nyo nalang format sa taas
        ],
      ),
    );
  }
}
