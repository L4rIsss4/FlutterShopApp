import 'package:flutter/material.dart';
import 'package:shopApp/assets.dart';
import 'package:shopApp/model/home_products_model.dart';
import 'package:shopApp/model/product.dart';

class HomeRiverpod extends ChangeNotifier {
  List<String> campaigns = [
    Assets.images.imCampaignsPNG,
    Assets.images.asPNG,
    Assets.images.as2PNG,
  ];

  int campaignsCurrentIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  void setCampaignsIndex(int newPageValue) {
    campaignsCurrentIndex = newPageValue;
    notifyListeners();
  }

  HomeProductsModel hotDeals =
      HomeProductsModel(categoryTitle: "Hot Deals", products: [
    Product(
      image: Assets.images.pc1PNG,
      title: "Asus Rog Zephyrus",
      price: 154195,
      star: 4.7,
      colors: [
        const Color.fromARGB(255, 199, 218, 221),
        const Color.fromARGB(255, 15, 14, 16),
        const Color.fromARGB(255, 125, 132, 125)
      ],
      descTitle:
          "Asus Rog Zephyrus M16 13.Nesil Core i9 13900H-RTX4090 16Gb-32Gb-2Tb-16inc-W11",
      descDetail:
          "İşlemci Markası:Intel\nİşlemciNesli:13. Nesil\nİşlemci Teknolojisi:Core i9\nİşlemci Numarası:13900H\nİşlemci Hızı:Turbo Boost 5.4 GHz\nRam (Sistem Belleği):32 GB (2x16GB)\nRam Tipi:DDR5Ram\nHafıza Bus Hızı:4800 MHz",
      isSaved: true,
    ),
    Product(
        image: Assets.images.tab1png,
        title: "iPad Pro 6",
        price: 70999,
        star: 4.6,
        colors: [
          const Color.fromARGB(255, 199, 218, 221),
          const Color.fromARGB(255, 15, 14, 16),
          const Color.fromARGB(255, 125, 132, 125)
        ],
        descTitle:
            "iPad Pro 6.Nesil 1TB WIFI 12.9''Liquid Retina XDR Ekran iPadOS Tablet Gümüş",
        descDetail:
            "Disk Kapasitesi:1 TB\nEkran Boyutu:12.9 inch\nÇözünürlük (Piksel):2732 x 2048\nRam (Sistem Belleği):16 GB\nAğırlık:682 gr\nİşletim Sistemi:iPadOS 16\nBağlantı Özellikleri:Wi-Fi\nPil performansı:Belirtilmemiş",
        isSaved: false),
    Product(
        image: Assets.images.telPNG,
        title: "iPhone 15 ProMax",
        price: 99999,
        star: 4.7,
        colors: [
          const Color.fromARGB(255, 199, 218, 221),
          const Color.fromARGB(255, 15, 14, 16),
          const Color.fromARGB(255, 125, 132, 125)
        ],
        descTitle: "iPhone 15 Pro Max 1 Tb Akıllı Telefon Mavi Titanium",
        descDetail:
            "Ekran Boyutu:6,7\nDahili Hafıza:1 TB\nMobil Ram Boyutu (GB):8 GB\nPil Gücü:4442 mAh\nEkran Yenileme Hızı:120 Hz\nKamera Çözünürlük:48 mp +12 mp + 12 mp\nSuya Dayanıklılık:IP68",
        isSaved: true),
    Product(
        image: Assets.images.tvPNG,
        title: "SAMSUNG QE 98QN990CTXTK",
        price: 670599,
        star: 4.9,
        colors: [
          const Color.fromARGB(255, 199, 218, 221),
          const Color.fromARGB(255, 15, 14, 16),
          const Color.fromARGB(255, 125, 132, 125)
        ],
        descTitle:
            "SAMSUNG QE 98QN990CTXTK 98inc 245 CM 8K UHD Smart Neo QLED TV,Uydu Alıcılı",
        descDetail:
            "Ekran Boyutu:98 inch\nMonitör Tipi:QLED\nÇözünürlük:8K Ultra HD\nEkran Boyu (cm):245\nHoparlör Gücü:120 W\nWi-Fi:Var\nÇözünürlük (Piksel):7680 x 4320\nTarama Hızı:100 Hz",
        isSaved: true),
    Product(
        image: Assets.images.evPNG,
        title: "ROBOROCK S8 Pro",
        price: 45999,
        star: 4.6,
        colors: [
          const Color.fromARGB(255, 199, 218, 221),
          const Color.fromARGB(255, 15, 14, 16),
          const Color.fromARGB(255, 125, 132, 125)
        ],
        descTitle: "ROBOROCK S8 Pro Ultra İstasyonlu Robot Süpürge Beyaz",
        descDetail:
            "Güç (Watt):68 W\nPil voltajı:-\nŞarj Süresi (Dk):4 Saat\nŞarjlı Kullanım Süresi:180 dakika\nFiltre Yapısı:Epa\nToz Filtreleri:-\nPil performansı:5200 mAh\nSes Seviyesi (db):67",
        isSaved: true),
  ]);

  HomeProductsModel mostPopular =
      HomeProductsModel(categoryTitle: "Most Popular", products: [
    Product(
        image: Assets.images.pc2PNG,
        title: "MacBook Pro",
        price: 148999,
        star: 5.0,
        colors: [
          const Color.fromARGB(255, 199, 218, 221),
          const Color.fromARGB(255, 15, 14, 16),
          const Color.fromARGB(255, 125, 132, 125)
        ],
        descTitle:
            "MacBook Pro MUW63TU/A M3 Max 48Gb-1Tb Ssd-Liquid Retina-16inc-UzaySiyahı",
        descDetail:
            "12 adet performans çekirdeğine ve 4 adet verimlilik çekirdeğine sahip 16 çekirdekli CPU 40 çekirdekli GPU 16 çekirdekli Neural Engine\nİşlemci Markası:Apple\nİşlemci Teknolojisi:M3 Max\nİşlemci Numarası:Paylaşılmıyor\nİşlemci Hızı:Paylaşılmıyor\nRam (Sistem Belleği):48 GB\nRam Tipi:Birleşik Bellek\nDisk Kapasitesi:1 TB\nDisk Türü:SSD",
        isSaved: true),
    Product(
        image: Assets.images.tel1PNG,
        title: "Samsung Galaxy Z",
        price: 61999,
        star: 4.5,
        colors: [
          const Color.fromARGB(255, 199, 218, 221),
          const Color.fromARGB(255, 15, 14, 16),
          const Color.fromARGB(255, 125, 132, 125)
        ],
        descTitle: "Samsung Galaxy Z Fold5 512 Gb Akıllı Telefon",
        descDetail:
            "Ekran Boyutu:7,6 inch\nDahili Hafıza:512 GB\nMobil Ram Boyutu (GB):12 GB\nPil Gücü:4440 mAh\nEkran Yenileme Hızı:120 Hz\nKamera Çözünürlük:50 mp + 12 mp + 10 mp\nSuya Dayanıklılık:Var\nİşlemci Hızı:3.36GHz,2.8GHz,2GHz",
        isSaved: false),
    Product(
        image: Assets.images.tv1PNG,
        title: "LG OLED77C34",
        price: 164699,
        star: 4.7,
        colors: [
          const Color.fromARGB(255, 199, 218, 221),
          const Color.fromARGB(255, 15, 14, 16),
          const Color.fromARGB(255, 125, 132, 125)
        ],
        descTitle: "LG OLED77C34 77inc 195 cm 4K webOS Smart TV,Uydu Alıcılı",
        descDetail:
            "Ekran Boyutu:77 inch\nMonitör Tipi:LED\nMonitör Tipi:OLED\nÇözünürlük:4K Ultra HD\nEkran Boyu (cm):195\nHoparlör Gücü:40 W\nİşlemci:?9 AI Processor 4K Gen6\nWi-Fi:Var",
        isSaved: false),
    Product(
        image: Assets.images.ofis1PNG,
        title: "HP DESIGN JET T650 36-in",
        price: 89091,
        star: 4.7,
        colors: [
          const Color.fromARGB(255, 199, 218, 221),
          const Color.fromARGB(255, 15, 14, 16),
          const Color.fromARGB(255, 125, 132, 125)
        ],
        descTitle: "HP DESIGN JET T650 36-in ÇİZİCİ (5HB10A)",
        descDetail:
            "Baskı Hızı:A1 kağıda 25\nModel Boyutu:914 mm\nMürekkep Türleri:Boya tabanlı (C,\nOrtam Kalınlığı (Metrik):0,3 mm''ye kadar\nRulo Dış Çapı:100 mm\nOrtam Genişliği Max:914 mm\nYazdırılamayan Rulo Medya:5 x 5 x 5 x 5 mm",
        isSaved: true),
    Product(
        image: Assets.images.akse1PNG,
        title: "SAMSUNG EP-T2510N",
        price: 599,
        star: 4.7,
        colors: [
          const Color.fromARGB(255, 199, 218, 221),
          const Color.fromARGB(255, 15, 14, 16),
          const Color.fromARGB(255, 125, 132, 125)
        ],
        descTitle: "SAMSUNG EP-T2510N Type C Hızlı Şarj Adaptörü 25W- Siyah",
        descDetail:
            "Renk:SIYAH\nBağlantı Özellikleri:Type-C\nAksesuar Tipi:Telefon Aksesuarı\nMenşei:Çin",
        isSaved: true),
  ]);
}
