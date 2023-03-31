import 'package:flutter/material.dart';
import 'package:proje1/modeller/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget { // renk paletine göre şekil alması için statelesswidgettan statefulwidgeta döndürdüm
  final Burc secilenburc;
  const BurcDetay({required this.secilenburc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  @override
  Widget build(BuildContext context) { //set state ile bu build metodunu otamatik çağırcak ve palet rengi
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250, // uygulama açıldığında sabit kalması için
          pinned: true, // kaydırdığımız zaman sabit kalıyor
          backgroundColor: Colors.pink,
          flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenburc.burcAdi + " Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                'images/' + widget.secilenburc.burcbuyukresim,
                fit: BoxFit.cover,
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Text(
                widget.secilenburc.burcDetay,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
