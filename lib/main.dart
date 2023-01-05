void main() {
  const DART101 = "I LOVE DART";
  print(DART101);

  final DART_FINAL = "This is final value";
  print(DART_FINAL);

  var DART_VAR = "THIS IS A VARAILABLE";
  print(DART_VAR);
  DART_VAR = "THIS IS AN UPDATED VARAILABLE";
  print(DART_VAR);

  // Operatörler

  int number = 2;
  int number2 = 6;

  var sonuc = number * number2;

  print(sonuc);

  // number++ kodu bir arttırır.
  // number+=2 kodu buradaki sayıyı 2 arttır demektir.

  number += 2;
  print(number);

  // bool kodu true ya da false sonucu için kullanılır, aşşağıda göstericem

  bool isBigger = number2 > number;

  print(isBigger);

  double sayi = 5.22;
  var a = sayi.round();
  print(a);

  /* Yukarıda "var a = sayi.round();" kısmında sayi.roud()'da tek nokta koyduk ve sayi üzerinden işlem yaptı, fakat yanına bir şey getirmek isteseydik bu ilk noktada olan kısım
  değişmiş olarak işlem görecekti. 
  Biz yan yana işlemler yaparken sayi kodunun ilk halini değiştirmek istiyorsak "var a = sayi..round()..compareTo(5)" şeklinde iki nokta koyman gerekiyor.
*/

  double numara = 9.99;
  var b = numara
    ..round()
    ..compareTo(5);

  print(b);

  // Koşul ve Döngüler 1

  var numberr = 5;
  if (numberr > 6) {
    print("Number is bigger");
    // if kodu ile bir koşul belirttik ve koşul sağlanırsa ekrana print kısmında ki şeyi yazdırdık.
  } else {
    // if fonksiyonundaki koşul sağlanmayınca else fonksiyonuna geçer ve bunu printler.
    print("Number is smaller");
  }

// yukarıdaki fonksiyonlar dışında "else if" var, "else if" if fonksşyonundan sonra dilediğin kadar kullanılabilir.

  var haftada_kac_gun_var = 7;
  if (haftada_kac_gun_var > 8) {
    print("Haftanın günleri is bigger");
  } else if (haftada_kac_gun_var >= 7 && haftada_kac_gun_var < 9) {
    print("Haftanın günleri is between exceptation");
  } else {
    print("Haftanın günleri is smaller");
  }
  // return kodunu yazarsak koşulu sağlayan fonksiyondan sonrasını çalıştırmaz.

  var hafta_ici = 5;
  if (hafta_ici > 4) {
    return print("Hafta içi 4'den fazla");
  } else {
    print("Haftanın günleri 4'den küçük");
  }

  // for döngüsü ise kod blokunu belirli bir sayıda ve üst üste çalıştırmak için kullanılan bir döngüdür.

  for (var berke = 0; berke < 7; berke++) {
    print("Number is $berke ");
  }

  /* while döngüsü belirlenmiş bir koşul bozulana kadar devam eder. Koşulun her kontrolünden sonra döngü içersindeki işlemler bir kez yapılır. Koşul bozulduktan sonraki ilk 
  kontrolde döngü terk edilir.
  */

  var x = 0;
  while (true) {
    x++;
    print("Number is $x");
    if (x == 100) {
      break;
    }
  }

// eğer break kodunu yazmasaydık cpu zorlanana  kadar devam ederdi, bu nedenden ötürü while çok kullanılmaz.

// switch döngüsü ise seçim kontrol mekanizması gibi düşünebilirsin.

  var black = 3;

  switch (black) {
    case 1:
      print("case 1");
      break;

    case 2:
      print("case is 2");
      break;

    // yukarıdaki caselerden hiç biri olmazsa ise aynı else gibi default göreve girer ve o çalışır.
    default:
      print("none");
  }

  // İSTİSNALAR

  var ulkedeki_sehir_sayisi;

  // yukarıda ulkedeki_sehir_sayisi kısmına bir değer atamadım o "null" şeklinde bunu normal if fonksiyonu yazarak ve print yaparsan hata alacaktır.
  // Hata almamak için try fonksiyonu kullanılır.
  // try fonksiyonu bir kod bloğunu hatalara karşı denetler, işlem hata tespit işlemi sonrasında çalıştırılan kod bloğudur.

  try {
    if (ulkedeki_sehir_sayisi > 2) {
      print(ulkedeki_sehir_sayisi);
    }
  } catch (e) {
    print(e);
  }

  // yukarıdaki kodu çalıştırdığımız da debug console kısmında hatalar yazılır.

  // kodumuzdaki hataları "catch" ile yakalıyoruz.
  // finnaly ise catch bloğundan sonra çalışan bir kod bloğudur. Bu sayede kodumuzda hata olsada olmasada finnaly içerisindeki kodlarımız çalışır. (özel durumlar harici pek kullanılmaz)
  // throw yazılan kodlarda çıkabilecek hatalarda kendinize özgü hatalar göndermek için kullanılan bloktur.
  // on bloğu ise try bloğu içinde çıkabilecek hataları öngörerek yazılan ve birçok defa kullanılabilen bloktur.

  // FONKSİYONLAR

// Aşşağıda iki sayıyı çarpan bir fonksiyon yaratalım ve bu içerisinde olduğumuz "void main" fonksiyonun içinde printleyelim.
  int calculate(int sayi1, int sayi2) {
    return sayi1 * sayi2;
  }

  print(calculate(5,
      7)); // burada fonksiyonumuza parametre veriyoruz, alması gereken iki parametreyi aldıktan sonra fonksiyon çalışıyor.

// Elinde vergisi eklenmeyen bir ürünün vergisiz fiyatı olsun,
// Vergi eklenmiş fiyatını bulan bir fonksiyon yapalım.

  double calculateTax(double price) {
    var taxRate = 18;
    return price * (taxRate / 100) +
        price; // return komutu fonksiyonun çağrıldığı yere değer döndüreceği için, return() komutunu kullanırlar.
  }

  print("\$ ${calculateTax(99.90).toStringAsFixed(2)}");

  // print kısmındaki ".toStringAsFixed()" fonksiyonu sayının kesirli kısmının kaç basamağının görüneceğini gösteriyor.
  // "\$" yapma sebebim doları text olarak yazması için, başına "\" getirirsen bu text şeklinde yazılır.
  // ikinci doları koyma sebebim ise fonksiyonu tırnklar içine koyduğum için bu metin haline geçer, biz bunu fonksiyona çevirmemiz için başına "$" koyarsak fonksiyon olur.

// Listeler, Set ve Map

  var list = [1, 2, 3, 5];
  list.add(6); // ".add" komutu ile yukarıdaki listemize 6 ekleyebiliyoruz.
  print(list);

  if (!list.contains(7)) {
    // Bu fonksiyonumuzun amacı listemizde 7 yok ise 7 ekleme komutunu veriyor. ve ekrana yazdırıyor.
    list.add(7);
    print(list);
  }

  // ".elementAt()" metodu indekte ne olduğunu gösterir. ".removeAt()" metodu listenin ilk elemanını siler. son olarak ".add(x)" metodu listeye x ekler.
  // "contains" bir elemanın listede olup olmadığını kontrol eden metodur.

  // Nesne Tabanlı Programlama

  /* sınıf oluşturmak için "class" anahtar kelimesi kullanılır. 

    Fields, basit bir değişken tanımı olabilir. Bu değişkenler oluşturulan nesnelere göre değiştirilebilir ya da sabit değişkenlerde olabilir.
   
    Getters - Setters, private değişkenelere ulaşmak ya da değerlerini güvenli bir şekilde değiştirmek için kullanılan yapılardır.
   
    Constructors, sınıfların kurucu görevi taşıyan fonksiyonlarıdır. Dart dilinde isimli ve isimsiz iki farklı kullanımı vardır

    Functions, tekrar tekrar çalışabilen basit kod bloğudur.
*/
}
