import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/provider/favourite_provider.dart';
import 'package:provider_state/screen/favourite/myfavourite.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> selectedItem = [];
  @override
  Widget build(BuildContext context) {
    print('build');
    final favouriteProvider =
        Provider.of<FavouriteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite app'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyFavouriteScreen()));
            },
            child: const Icon(Icons.favorite),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) => Consumer<FavouriteProvider>(
                builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      print('only this widget');
                      if (value.selectedItem.contains(index)) {
                        value.removeItem(index);
                      } else {
                        value.addItem(index);
                      }
                    },
                    title: Text(
                      'Item ' + index.toString(),
                    ),
                    trailing: Icon(value.selectedItem.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_border_outlined),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
