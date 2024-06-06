# ImageProcessingFromImageToExcel
You can read options of question from image to excel

you can get survey answer by this program.
1. Scan survey and save as image in folder
2. Start program
3. Copy and paste image folder in program folder
4. Describe question information and options
5. Start image processing on the program
6. Click from image to excel menu on the program
7. you can access result ImageProcessedResult.xlsx in MD folder

Matlab görüntü işleme özelliklerini rahatça kullanmanız için bir yazılım geliştirdim.
Bu uygulama ile el ile işaretlenen soruların seçeneğini excel olarak cevapların aktarılması için uygulama geliştirdim.
Bu uygulamanın başarısı anketin görüntü işlemeye ne kadar uygun bir şekilde çıktı alınıp ne kadar düzenli taradığına göre değişkenlik göstermektedir.
Bu yazılımı zaman içerinde daha da geliştirip farklı görüntü işleme özelliklerini kazandırmay çalışacağım.

Görüntü işleme algoritmalarını matlab kodunda yazıp imageProcessed adında değişken üzerine uygulayacak şekilde bu programa aracağıyla ya da masaüstünde bulunan MD klasörü içindeki ApplicationInformations excel dosyasında IMAGEPROCESSNAME sekmesinde yeni bir tane oluşturarak yapabilirsiniz.

Programı çalıştırdığınızda MD klasörü altında bulunan ImageFolder dosyasına taradığınız resimler klasörlerini yapıştırarak bunlar üzerinde görüntü işlem uygulayabilirsiniz.

Sorunun seçeneklerini veya başka değerleri işaretleyebileceğiniz resimleri ReferanceImageFolder klasörü içine atınız. 
Bu resimleri uygulama üzerinde Form Definition menüsü altındaki Add Question and Option menüsü tıklayarak görüntü işlem yapıldıktan sonra tetiklenecek alanlar seçiliyor.
Resim seçildikten sonra soru bilgisi giriliyor. Girilen seçenek sayısı kadar işaretleme yapılıp bu sorunun seçenek bilgisi girilmelidir.
Resimi istediğini şekilde büyüttükten sonra klavyeden Enter tuşuna tıklayınız ve sonrasında sorunun seçeneklerinin işaretlenmesi gereken yerleri seçiniz.

Run Image Processing menüsü tıklandığında sistem otomatik tanımlanan resimlerden ReferanceImageFolder altındaki resimler baz alarak ImageFolder altındaki tüm resimlerin dönme veya kayma hatalarını ortadan yok eder ve ImageEditedFolder klasörü altına ekler.
ImageEditedFolder altındaki resimleri de seçilen görüntü işlem baz alarak görüntü işlem uygulanıp ImageProcessedFolder klasörü altına kaydeder.

Get Datas menüsü altındaki From Image To Excel menüsü tıklandığında sorunun seçenekleri belirtilen alanlar ImageProcessedFolder klasörü altındaki resimlerden taranıp ImageProcessedResult adında excel verisi olarak kaydedilmektedir.
Bu işlemin düzgün yapılıp yapılmadığını kontrol etmek için Get Datas menüsü altındaki Step By Step Read Image menüsü tıklanarak yapabilirsiniz. 
Bir sonraki cevap için mouse veya klavye ile tıklayarak ilerleyebilirsiniz.

