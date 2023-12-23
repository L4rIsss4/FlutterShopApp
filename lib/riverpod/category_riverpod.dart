import 'package:flutter/material.dart';
import 'package:shopApp/assets.dart';
import 'package:shopApp/model/category_product_model.dart';
import 'package:shopApp/model/product.dart';

class CategoryRiverpod extends ChangeNotifier {
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
}

var x = kategori1;
CategoryProductModel kategori1 =
    CategoryProductModel(kategoriTitle: 'Bilgisayar & Tablet', products: [
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
    descTitle: "Asus Rog Zephyrus M16 13.Nesil Core i9 13900H-RTX4090 16Gb-32Gb-2Tb-16inc-W11",
    descDetail:
    "İşlemci Markası:Intel\nİşlemciNesli:13. Nesil\nİşlemci Teknolojisi:Core i9\nİşlemci Numarası:13900H\nİşlemci Hızı:Turbo Boost 5.4 GHz\nRam (Sistem Belleği):32 GB (2x16GB)\nRam Tipi:DDR5Ram\nHafıza Bus Hızı:4800 MHz",
    isSaved: true,
  ),
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
      descTitle: "MacBook Pro MUW63TU/A M3 Max 48Gb-1Tb Ssd-Liquid Retina-16inc-UzaySiyahı",
      descDetail:
      "12 adet performans çekirdeğine ve 4 adet verimlilik çekirdeğine sahip 16 çekirdekli CPU 40 çekirdekli GPU 16 çekirdekli Neural Engine\nİşlemci Markası:Apple\nİşlemci Teknolojisi:M3 Max\nİşlemci Numarası:Paylaşılmıyor\nİşlemci Hızı:Paylaşılmıyor\nRam (Sistem Belleği):48 GB\nRam Tipi:Birleşik Bellek\nDisk Kapasitesi:1 TB\nDisk Türü:SSD",
      isSaved: true),
      Product(
      image: Assets.images.tab1png,
      title:
          "iPad Pro 6",
      price: 70999,
      star: 4.6,
      colors: [
        const Color.fromARGB(255, 199, 218, 221),
        const Color.fromARGB(255, 15, 14, 16),
        const Color.fromARGB(255, 125, 132, 125)
      ],
      descTitle: "iPad Pro 6.Nesil 1TB WIFI 12.9''Liquid Retina XDR Ekran iPadOS Tablet Gümüş",
      descDetail:
      "Disk Kapasitesi:1 TB\nEkran Boyutu:12.9 inch\nÇözünürlük (Piksel):2732 x 2048\nRam (Sistem Belleği):16 GB\nAğırlık:682 gr\nİşletim Sistemi:iPadOS 16\nBağlantı Özellikleri:Wi-Fi\nPil performansı:Belirtilmemiş",
      isSaved: false),
      Product(
      image: Assets.images.tabPNG,
      title:
          "WACOM DTH-2420",
      price: 148028,
      star: 4.3,
      colors: [
        const Color.fromARGB(255, 199, 218, 221),
        const Color.fromARGB(255, 15, 14, 16),
        const Color.fromARGB(255, 125, 132, 125)
      ],
      descTitle: "WACOM DTH-2420 CINTIQ PRO 24 INCH",
      descDetail:
      "Bağlantı Özellikleri:Belirtilmemiş\nMarka:Wacom\nMenşei:Çin\nGaranti:24",
      isSaved: false),
          Product(
      image: Assets.images.pc3PNG,
      title:
          "Msi Gp68",
      price: 90178,
      star: 4.5,
      colors: [
        const Color.fromARGB(255, 199, 218, 221),
        const Color.fromARGB(255, 15, 14, 16),
        const Color.fromARGB(255, 125, 132, 125)
      ],
      descTitle: "Msi Gp68 Vector 13.Nesil Core i9 13980HX-RTX4080 12Gb-32Gb-1Tb Ssd-16inc-W11",
      descDetail:
      "İşlemci Markası:Intel\nİşlemci Nesli:13. Nesil\nİşlemci Teknolojisi:Intel® Core™ i9\nİşlemci Numarası:13980HX\nİşlemci Hızı:4.0 GHz Turbo Boost 5.6 GHz\nRam (Sistem Belleği):32 GB\nRam Tipi:DDR5\nRam Hafıza Bus Hızı:4800 MHz",
      isSaved: true),

]);
var ax = kategori2;
CategoryProductModel kategori2 =
    CategoryProductModel(kategoriTitle: 'Telefon & Aksesuar', products: [
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
      image: Assets.images.tel2PNG,
      title: "Samsung Galaxy S23",
      price: 53999,
      star: 4.4,
      colors: [
        const Color.fromARGB(255, 199, 218, 221),
        const Color.fromARGB(255, 15, 14, 16),
        const Color.fromARGB(255, 125, 132, 125)
      ],
      descTitle: "Samsung Galaxy S23 Ultra 256 Gb Akıllı Telefon",
      descDetail:
      "Ekran Boyutu:6.8 inch\nDahili Hafıza:256 GB\nMobil Ram Boyutu (GB):8 GB\nPil Gücü:5000 mAh\nEkran Yenileme Hızı:120 Hz\nKamera Çözünürlük:15 - 20 MP\nSuya Dayanıklılık:Var\nİşlemci Hızı:3.36GHz,2.8GHz,2GHz",
      isSaved: true),
  Product(
      image: Assets.images.aksePNG,
      title: "APPLE MHJE3TU",
      price: 609,
      star: 4.6,
      colors: [
        const Color.fromARGB(255, 199, 218, 221),
        const Color.fromARGB(255, 15, 14, 16),
        const Color.fromARGB(255, 125, 132, 125)
      ],
      descTitle: "APPLE MHJE3TU/A 20W USB-C HIZLI ŞARJ GÜÇ ADAPTÖRÜ",
      descDetail:
      "Menşei:Çin\nGaranti:24\nUyumluluk:iPhone 12 Pro iPhone 12 Pro Max iPhone 12 mini iPhone 12 iPhone 11 Pro iPhone 11 Pro Max iPhone 11 iPhone SE (2nd generation) iPhone XS iPhone XS Max iPhone XR iPhone X iPhone 8 iPhone 8 Plus iPad Pro 12.9-inch (4th generation) iPad Pro 12.9-inch (3rd generation) iPad Pro 12.9-inch (2nd generation) iPad Pro 12.9-inch (1st generation) iPad Pro 11-inch (2nd generation) iPad Pro 11-inch (1st generation) iPad Pro 10.5-inch iPad Air (4th generation) iPad Air (3rd generation) iPad (8th generation) iPad (7th generation) iPad mini (5th generation)\nGüç kaynağı türü:AC\nŞarj uyumluluğu:Evrensel\nŞarj türü:Bina içi\nMaksimum güç:20 W\nPaket başına miktar:1 adet",
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
var bx = kategori3;
CategoryProductModel kategori3 =
    CategoryProductModel(kategoriTitle: 'Tv & Ses ve Görüntü', products: [
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
      descTitle: "SAMSUNG QE 98QN990CTXTK 98inc 245 CM 8K UHD Smart Neo QLED TV,Uydu Alıcılı",
      descDetail:
      "Ekran Boyutu:98 inch\nMonitör Tipi:QLED\nÇözünürlük:8K Ultra HD\nEkran Boyu (cm):245\nHoparlör Gücü:120 W\nWi-Fi:Var\nÇözünürlük (Piksel):7680 x 4320\nTarama Hızı:100 Hz",
      isSaved: true),
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
      image: Assets.images.tv2PNG,
      title: "Philips 77OLED808",
      price: 131699,
      star: 4.5,
      colors: [
        const Color.fromARGB(255, 199, 218, 221),
        const Color.fromARGB(255, 15, 14, 16),
        const Color.fromARGB(255, 125, 132, 125)
      ],
      descTitle: "Philips 77OLED808 77inc 194 cm 4K UHD Android Smart OLED TV,Uydu Alıcılı",
      descDetail:
      "Ekran Boyutu:77 inch\nMonitör Tipi:OLED\nÇözünürlük:4K Ultra HD\nİşletim Sistemi Türü:Android\nEkran Boyu (cm):194\nHoparlör Gücü:70 W\nİşlemci:Dört Çekirdek\nWi-Fi:Var",
      isSaved: true),
      Product(
      image: Assets.images.sesPNG,
      title: "SAMSUNG HW-Q990C",
      price: 29999,
      star: 4.8,
      colors: [
        const Color.fromARGB(255, 199, 218, 221),
        const Color.fromARGB(255, 15, 14, 16),
        const Color.fromARGB(255, 125, 132, 125)
      ],
      descTitle: "SAMSUNG HW-Q990C SoundBar Ev Sinema Sistemi 11.1.4 Kanal,Bluetooth,HDMI",
      descDetail:
      "Ses Sistemi:11.1.4 Kanal\nHoparlör Gücü:Paylaşılmıyor\nDijital Bağlantılar:Wi-Fi\nDijital Bağlantılar:HDMI\nDijital Bağlantılar:Optik\nDijital Bağlantılar:HDR10+\nDijital Bağlantılar:Bluetooth\nSes Çıkışı:11.1.4 Kanal",
      isSaved: true),
]);
var cx = kategori4;
CategoryProductModel kategori4 =
    CategoryProductModel(kategoriTitle: 'Ev & Ofis & Kırtasiye', products: [
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
  Product(
      image: Assets.images.ev1PNG,
      title: "PHILIPS PSG8130/80",
      price: 15599,
      star: 4.9,
      colors: [
        const Color.fromARGB(255, 199, 218, 221),
        const Color.fromARGB(255, 15, 14, 16),
        const Color.fromARGB(255, 125, 132, 125)
      ],
      descTitle: "PHILIPS PSG8130/80 BUHAR KAZANLI ÜTÜ",
      descDetail:
      "Menşei:Endonezya\nGaranti:24\nSu seviyesi göstergesi:Var\nMaks. Buhar basıncı:8,5 Bar\nDeğişken güç:Var\nBuhar artış fonksiyonu:Var\nHortum saklama:Var\nKilitleme:Var",
      isSaved: false),
  Product(
      image: Assets.images.ofisPNG,
      title: "BROTHER HL-L9430CDN",
      price: 87649,
      star: 4.8,
      colors: [
        const Color.fromARGB(255, 199, 218, 221),
        const Color.fromARGB(255, 15, 14, 16),
        const Color.fromARGB(255, 125, 132, 125)
      ],
      descTitle: "BROTHER HL-L9430CDN RENKLİ LASER YAZICI",
      descDetail:
      "Menşei: ÇİN\nGaranti: 24",
      isSaved: true),
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
]);

List<Product> getSavedProducts() {
  // Tüm kategorileri alın
  List<CategoryProductModel> categories = [
    kategori1,
    kategori2,
    kategori3,
    kategori4
  ];

  // Tüm kategorilerdeki ürünleri alın
  List<Product> products = [];
  for (var category in categories) {
    products.addAll(category.products);
  }

  // isSaved özelliği true olan ürünleri alın
  List<Product> savedProducts = [];
  for (var product in products) {
    if (product.isSaved) {
      savedProducts.add(product);
    }
  }

  return savedProducts;
}
