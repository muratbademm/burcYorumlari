import 'package:flutter/material.dart';
import 'package:proje1/burcdetay.dart';
import 'package:proje1/modeller/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenburc;
  const BurcItem({required this.listelenenburc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context)
        .textTheme; //material.dartta yani main dartta varsayılan temayı kullandım
    return Card(
      elevation: 4, //kartların gölgeliğini arttırdım
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => BurcDetay(secilenburc: listelenenburc),
            ),
          );
        },
        leading: Image.asset(
          "images/" + listelenenburc.burckucukresim,
          width: 64,
          height: 64,
        ), //burada imageleri getirmesini sağladım
        title: Text(
          listelenenburc.burcAdi,
          style: myTextStyle.headline5,
        ), //başlık olarak o an ki burcun adı
        subtitle: Text(
          listelenenburc.burcTarihi,
          style: myTextStyle.subtitle1,
        ),
        trailing: const Icon(Icons.arrow_forward_outlined),
        //arayuzde ok işaretlerini oluşturma ve rengini belirleme yaptım
      ),
    );
  }
}
