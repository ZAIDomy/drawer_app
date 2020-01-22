import 'package:flutter/material.dart';

class Home extends StatelessWidget {

Drawer getDrawer(BuildContext context){

  var head  = DrawerHeader(child: Text("Menu"));
  var info  = AboutListTile(
    child: Text("Info App"),
    applicationIcon: Icon(Icons.favorite),
    applicationVersion: "v1.0.0",
    icon: Icon(Icons.info),
  );

  ListTile  getItem(Icon  icon, String  description, String route){
    return  ListTile(
      leading: icon,
      title: Text(description),
      onTap: (){
        Navigator.pushNamed(context, route);
      },
    );
  }

  ListView  getList(){
    return  ListView(
      children: <Widget>[
        head,
        getItem(Icon(Icons.home), 'Pagina principal','/'),
        getItem(Icon(Icons.settings), 'Configuracion','/configuracion'),
        getItem(Icon(Icons.battery_charging_full), 'Bateria','/bateria'),
        info
      ],
    );
  }
  return Drawer(child: getList());
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina pricipal"),
      ),
      body: Container(
        child: Center(
          child: Text("pantalla principal"),
        ),
      ),
      drawer: Drawer(
        child: getDrawer(context)
      ),
    );
  }
}