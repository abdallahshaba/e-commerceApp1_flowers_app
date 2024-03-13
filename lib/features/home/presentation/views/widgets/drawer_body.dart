import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/78.jpg'),
                          fit: BoxFit.cover)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/33.jpg'),
                  ),
                  accountName: Text("Toqua Shaban"),
                  accountEmail: Text("toqua@gmail.com")),
              ListTile(
                title: const Text("Home"),
                leading: const Icon(Icons.home),
                onTap: () {
                  GoRouter.of(context).push('/HomeView');
                },
              ),
              ListTile(
                title: const Text("My Product"),
                leading: const Icon(Icons.add_shopping_cart),
                onTap: () {
                  GoRouter.of(context).push('/HomeView');
                },
              ),
              ListTile(
                title: const Text("About"),
                leading: const Icon(Icons.help_center),
                onTap: () {
                  GoRouter.of(context).push('/HomeView');
                },
              ),
              ListTile(
                title: const Text("Log out"),
                leading: const Icon(Icons.exit_to_app),
                onTap: () {
                  GoRouter.of(context).push('/HomeView');
                },
              )
            ],
          );
  }
}