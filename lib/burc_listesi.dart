import 'package:flutter/material.dart';
import 'package:proje1/burc_item.dart';
import 'package:proje1/data/strings.dart';
import 'package:proje1/modeller/burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc>
      tumBurclar; //sınıfın her yerinden tum burclara erişmek için burada tanımladım bundan sonra kurucu metot çalıştığı zaman boş listeye atmış oldum
  BurcListesi() {
    tumBurclar = verikayanaginihazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burçlar listesi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
      return BurcItem(
          listelenenburc: tumBurclar[index]); //geriye widget dödndürdüm
        },
        itemCount: tumBurclar.length,
      ), //builder daha performanslı hale getiriyor
    );
  }

  List<Burc> verikayanaginihazirla() {
    List<Burc> gecici = [];

    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarih = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukresim =
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      //koç1.png yi küçük hale çevirdim
      var burcBuyukresim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      Burc eklenecekburc =
          Burc(burcAdi, burcTarih, burcDetay, burcKucukresim, burcBuyukresim);
      gecici.add(
          eklenecekburc); // bu dongu 12 kez donerek string doyasındakı burclar bu lısteye aktarılmıs eklenmiş olacak veri kayangı metoduna atmıs olacağım
    }
    return gecici;
    // bu metod tumburcların ıcıne liste return edicek
  }
}
