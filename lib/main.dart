import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Papeleria DDO"),
          centerTitle: true,
          backgroundColor: Colors.blue, // Color de fondo personalizado
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                    text: "Pinturas",
                  ),
                  Tab(
                    text: "Mochilas",
                  ),
                  Tab(
                    text: "Papel",
                  ),
                  Tab(
                    text: "Cartas",
                  ),
                  Tab(
                    text: "Clips",
                  )
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(children: <Widget>[
          Center(
            child: Icon(Icons.brush, size: 180, color: Colors.red),
          ),
          Center(
            child: Icon(Icons.backpack, size: 180, color: Colors.green),
          ),
          Center(
            child: Icon(Icons.description, size: 180, color: Colors.blue),
          ),
          Center(
            child: Icon(Icons.card_membership, size: 180, color: Colors.orange),
          ),
          Center(
            child: Icon(Icons.attach_file, size: 180, color: Colors.purple),
          ),
        ]),
      ),
    );
  } //widgets
}
