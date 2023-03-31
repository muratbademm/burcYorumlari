class Burc {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetay;
  final String _burcKucukresim;
  final String _burcBuyukresim;
 get burckucukresim => this._burcKucukresim;
 get burcbuyukresim => this._burcBuyukresim;
 get burcAdi => this._burcAdi;
 get burcTarihi=> this._burcTarihi;
 get burcDetay => this._burcDetay;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetay, this._burcKucukresim,
      this._burcBuyukresim);

  @override
  String toString() {
    return '$_burcAdi - $_burcBuyukresim';
  }
}
