//
//  KitapData.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 12.08.2023.
//

import Foundation

class KitapData : ObservableObject {
    var liste = [Kitap]()
    var kategori = [Kategori]()
    @Published var kategoriListesi = [Kategori]()
    
    let k1 = Kategori(id: 1, kategori_ad: "Roman")
    let k2 = Kategori(id: 2, kategori_ad: "Şiir")
    let k3 = Kategori(id: 3, kategori_ad: "Biyografi")
    let k4 = Kategori(id: 4, kategori_ad: "Hikaye")
    let k5 = Kategori(id: 5, kategori_ad: "Polisiye")

    
    
    
    
    
    init(){

        kategori.append(k1)
        kategori.append(k2)
        kategori.append(k3)
        kategori.append(k4)
        kategori.append(k5)
        
        kategoriListesi = kategori
        let kitap1 = Kitap(id: 1, kitap_ad: "Anne Frank'ın Hatıra Defteri", kitap_yazar: "Anne Frank", kitap_resim: "annefrankınhatıradefteri", kitap_fiyat: 9.99, kitap_aciklama: "Bu hatıralarda, her an Naziler tarafından yakalanma tehlikesi altında yaşayan bir grup insanın çektiği çilelerin yanı sıra, genç kızlığına yeni adım atan Anne’ın çekingenliklerle, küçük kaçamaklarla tomurcuklanan sevdası da anlatılıyor. Şartların acımasızlığına karşın yaşama gücünü yitirmeyen Anne Frank’ın hikâyesi Can Yücel’in kendine has sesiyle aramıza karışıyor.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet",kitap_kategori: k3)
        let kitap2 = Kitap(id: 2, kitap_ad: "Çocukluğum", kitap_yazar: "Maksim Gorki", kitap_resim: "çocukluğum", kitap_fiyat: 9.99, kitap_aciklama: "Gorki’nin Çocukluğum, Ekmeğimi Kazanırken ve Benim Üniversitelerim’den oluşan u¨çlemesi, Rus dilinde yazılmış en guüzel otobiyografilerden biridir. Çocukluğum’da babasını küçükk yaşta yitirdikten sonra taşındığı dedesinin evinde geçirdiği yılları anlatır. Miras kavgaları, doğumlar, öluümler, küçük Aleksey’in tanık olduğu ve bizzat maruz kaldığı akıl almaz şiddet, bu evde gu¨ndelik hayatın akışı içinde sıradan olaylardır.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" ,kitap_kategori: k3)
        let kitap3 = Kitap(id: 3, kitap_ad: "Enver", kitap_yazar: "Murat Bardakçı", kitap_resim: "enver", kitap_fiyat: 9.99,kitap_aciklama: "İstanbul’da mütevazi bir ahşap evde başlayıp Hürriyet Kahramanlığı’na ve imparatorluğun en güçlü adamlığına uzanan ama ardından idam mahkûmluğuna ve sürgünlere kadar giden, 1922’de uzak diyarların haritalarda bile yeralmayan ücra bir tepesinde Rus süvarisinin namlusundan çıkan domdom kurşunu ile noktalanan 41 senelik macera dolu bir hayat…",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k3)
        let kitap4 = Kitap(id: 4, kitap_ad: "Sol Ayağım", kitap_yazar: "Cristy Brown", kitap_resim: "solayağım", kitap_fiyat: 9.99,kitap_aciklama: "Doğuştan beyin felçli olan Christy Brown, konuşmasını ve hareketlerini kontrol edemiyordu. Ama zekâsı ve cesareti onun okuma ve yazmayı, resim yapmayı ve daktilo kullanmayı öğrenebilmesini, hatta bu kitabı yazabilmesini sağladı. Christy Brown, kendi yaşam öyküsünü kaleme aldığı bu kitabında bütün bunları öğrenebilmek için sol ayağını kullanarak nasıl büyük bir mücadele verdiğini ve hayata nasıl tutunduğunu anlatıyor.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k3)
        let kitap5 = Kitap(id: 5, kitap_ad: "Steve Jobs", kitap_yazar: "Walter Isaacson", kitap_resim: "stevejobs", kitap_fiyat: 9.99,kitap_aciklama: "Çok satan Benjamin Franklin ve Albert Einstein biyografilerinin yazarı Walter Isaacson, Apple’ın kurucularından Steve Jobs’ın, kendisiyle tam işbirliği içinde yazılmış tek biyografisini sunuyor.Jobs’la iki yıldan uzun süre boyunca yapılan kırktan fazla röportajın -ayrıca yüzden fazla akrabasıyla, arkadaşıyla, hasmıyla, rakibiyle ve iş arkadaşıyla yapılan görüşmelerin- temel alındığı bu kitap, kusursuzluk tutkusuyla ve azmiyle altı endüstride (kişisel bilgisayarlar, animasyon filmler, müzik, telefonlar, tablet bilgisayarlar ve dijital yayıncılık) çığır açmış yaratıcı bir girişimcinin inişli çıkışlı hayatını ve güçlü kişiliğini anlatıyor.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k3)
        //***
        let kitap6 = Kitap(id: 6, kitap_ad: "Dönüşüm", kitap_yazar: "Franz Kafka", kitap_resim: "dönüşüm", kitap_fiyat: 9.99,kitap_aciklama: "Kafkanın 1915 yılında yayımlanan Dönüşüm adlı anlatısı, yazarın anlatım sanatının gerçek anlamda doruklarına varmış olduğu bir yapıttır. Küçük burjuva çevrelerindeki tiksindirici aile ilişkilerini en ince ayrıntılarına kadar irdeleyen anlatı, aynı zamanda genelde toplumun kalıplaşmış, işlevini çoktan yitirmiş akışına bilinç düzeyinde başkaldıran bireyin tragedyasını çarpıcı biçimde dile getirir. Gregor Samsanın başkalaşması, bir böceğe dönüşmesi, salt bir çarkın kaskatı dişlisi, eleştirmeyen, ama yalnızca boyun eğen bir toplum teki olmaktan çıkma anlamını taşır; böylece böcekleşen'in yazgısı, elbet toplumca dışlanmaktadır. Kafka'nın en kalıcı yapıtları arasında yer alan ve Nobel ödülü sahibi Elias Canetti'nin en yetkin düzeydeki anlatım sanatının tipik örneği diye nitelendirdiği Dönüşümü. Ahmet Cemalin kaleminden yeni bir çeviriyle sunuyoruz.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k4)
        let kitap7 = Kitap(id: 7, kitap_ad: "Korku", kitap_yazar: "Stefan Zweig", kitap_resim: "korku", kitap_fiyat: 9.99,kitap_aciklama: "Rahat ve korunaklı bir yaşam süren saygın bir kadın, sekiz yıllık evliliğinden sıkılmış, burjuva dünyasının kozasından çıkarak kendini genç bir piyanistin kollarına atmıştır. Ancak bu gizli ilişkiden haberdar olan bir şantajcının ansızın zuhur etmesiyle, hayatında yeni farkına vardığı bütün güzellikleri yitirme tehlikesiyle karşı karşıya kalır ve kahredici bir korkunun pençesine düşer. Korku insanı bilinçdışına itilmiş utanç verici deneyimlerden, bastırılmış pişmanlıklardan özgürleştirebilecek güçte bir yapıt.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k4)
        let kitap8 = Kitap(id: 8, kitap_ad: "Mutlu Prens", kitap_yazar: "Oscar Wilde", kitap_resim: "mutluprens", kitap_fiyat: 9.99,kitap_aciklama: "Oscar Wilde’ın 1888’de yayımlanan Mutlu Prens’teki masalları oğulları için yazdığı düşünülse de, yazar hedef kitlesini “yediden yetmişe çocuk ruhlu insanlar, şaşırma ve sevinme gibi çocuksu yetilerini koruyanlar” olarak açıklamıştır. Wilde bu masallarda bencilliği ve duyarsızlığı gözler önüne serer ve eleştirir. Onun ana masal kişileri bazen hatalarını anlayarak pişmanlık duyarlar ve özgecil davranışlar sergilerler. Kimi zaman da gözlerini kör eden kibirden bir türlü kurtulamazlar.Mutlu Prens her ne kadar çıraklık döneminin ürünü olsa da, Wilde’ın masal ve alegori alanındaki ustalığını ortaya koyar.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k4)
        let kitap9 = Kitap(id: 9, kitap_ad: "Satranç", kitap_yazar: "Stefan Zweig", kitap_resim: "satranç", kitap_fiyat: 9.99,kitap_aciklama: "New York'tan Buenos Aires'e giden bir yolcu gemisinde yolcular arasında bulunan bir milyoner, dünya satranç şampiyonu Mirko Czentovic'e, ücreti karşılığında, bir parti satranç oynamayı teklif eder. İkisinin oyununu izleyen Avusturyalı bir göçmen, Dr. B., oyun sırasında kendini tutamayıp onlara karışınca şampiyonla karşılaşması önerilir kendisine. Gestapo tarafından bir otel odasına kapatılan ve uzunca bir süreyi bu odada, tek başına ve oyalanacak hiçbir şeyi olmadan geçiren, yalnızca sorgulama için odadan çıkarılan Dr. B., bir gün rastlantıyla eline geçirdiği bir satranç kitabı sayesinde bu oyunun inceliklerini öğrenmiştir. Satranç tahtası ve taşları olmamasına rağmen, önce ekmekten yaptığı satranç taşlarıyla sonra da tümüyle zihninden oynayarak kuramsal bir satranç ustası olup çıkar. Ancak bu tutkusu yüzünden sinir krizine, beyin ateşine yakalanır. Tedavi olur, arkasından da serbest bırakılır. Yirmi yıldır eline satranç taşı almamış olsa da, Dr. B., gemide satranç şampiyonuyla oynadığı oyunu inanılmaz bir biçimde kazanır. Kendini olayın heyecanına kaptırarak maçın rövanşını oynamayı isteyince şaşırtıcı bir son bekler onu. Stefan Zweig'ın büyük bir ustalıkla kaleme aldığı kısa, ama yoğun romanı Satranç, gerilimli kurgusu, kahramanının ruhsal gelgitlerinin incelikle işlendiği dokusuyla bir solukta okunuyor.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k4)
        let kitap10 = Kitap(id: 10, kitap_ad: "Sırça Köşk", kitap_yazar: "Sabahattin Ali", kitap_resim: "sırçaköşk", kitap_fiyat: 9.99,kitap_aciklama: "'Niçin hep acı şeyler yazayım? Dostlar, yufka yürekli dostlar bundan hoşlanmıyorlar. 'Hep kötü, sakat şeyleri mi göreceksin?' diyorlar. 'Hep açlardan, çıplaklardan, dertlilerden mi bahsedeceksin? Geceleri gazete satıp izmarit toplayan serseri çocuklardan; bir kaşık toprak, bir bakraç su için birbirlerini öldürenlerden; cezaevlerinde ruhları kemirile kemirile eriyip gidenlerden; doktor bulamayanlardan; hakkını alamayanlardan başka yazacak şeyler, iyi güzel şeyler kalmadı mı? Niçin yazılarındaki bütün insanların benzi soluk, yüreği kederli? Bu memlekette yüzü gülen, bahtiyar insan yok mu?'",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k4)
        // ****
        let kitap11 = Kitap(id: 11, kitap_ad: "Da Vinci'nin Şifresi", kitap_yazar: "Dan Brown", kitap_resim: "davincişifresi", kitap_fiyat: 9.99,kitap_aciklama: "Dan Brown, ülkedeki birkaç usta yazardan biri. Da Vinci Şifresi üstün bir zeka tarafından kurgulanmış harika bir gerilim romanı.Entrika ve tehlikenin iç içe geçtiği okuduğum en iyi gerilim romanı. Kelime oyunları, gizemler ve bulmacalarla örülmüş akıllara durgunluk veren bir öykü.Dan Brown'ı yeni keşfettim. Da Vinci Şifresi düşündürücü olduğu kadar aynı zamanda büyüleyici. Tarih meraklıları, komplo çılgınları, bulmaca meraklıları ve gerilim öyküsü severlerin bir solukta okuyacakları olağanüstü bir roman. Ben bu kitaba bayıldım.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k5)
        let kitap12 = Kitap(id: 12, kitap_ad: "Kızıl Nehirler", kitap_yazar: "Jean-Christophe Grangé", kitap_resim: "kızılnehirler", kitap_fiyat: 9.99,kitap_aciklama: "Biz efendiler, biz köleleriz.Biz her yerdeyiz, hem de hiçbir yerde.Biz karar verenleriz.Kızıl nehirlerin hâkimiyiz.Kalbinize güvenmiyorsanız ya da ocakta yemeğiniz varsa, bu kitabı okumaya başlamayın.Grangé'nin sınır tanımayan hayal gücü, sürekli artan gerilim, etkileyici karakterler, birbirinden korkunç cinayetler; hepsi daha ilk satırlardan itibaren size hükmedecek...'Kızıl Nehirler' sadece Fransa'da 450.000 sattı ve 20 dile çevrildi.Soluk kesen bir tempo. İnsanı hemen saran bir hikâye.Çok gerçekçi şiddet sahneleri. İki sıradışı insanın çevresinde gelişen olaylar: biri enerji dolu, tecrübeli bir polis, diğeri sokaklardan gelme Mağripli bir çaylak....",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k5)
        let kitap13 = Kitap(id: 13, kitap_ad: "Melekler ve Şeytanlar", kitap_yazar: "Dan Brown", kitap_resim: "meleklerveşeytanlar", kitap_fiyat: 9.99,kitap_aciklama: "Çok eski gizli bir kardeşlik örgütü, dünyayı yok edecek ölümcül yeni bir silah, Akıl almaz bir hedef , Dan Brown'ın yeni eseri hızlı temposuyla soluk kesiyor. Claney ve Cussler'in gerilim dolu romanlarıyla kolayca boy ölçüşebilecek güçte. Baştan sona okuyucuyu gerçek olduğuna inandıracak kadar heyecanlı bir maceraya sürüklüyor. Melekler ve Şeytanlar okuyucuların asla unutamayacakları bir roman.''",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k5)
        let kitap14 = Kitap(id: 14, kitap_ad: "Siyah Kan", kitap_yazar: "Jean-Christophe Grangé", kitap_resim: "siyahkan", kitap_fiyat: 9.99,kitap_aciklama: "Güneydoğu Asya’da, Yengeç Dönencesi ile Ekvator çizgisi arasında bir yerlerde bir yol vardır.Siyah kanla çizilmiş bir yol. Korkunun ve ölümün hakim olduğu bir yol.Paris. İlk temas. Kuala Lumpur. Hayat Yolu. Uçuşan ve Çoğalan. Sonsuzluğun İşaretleri. Kamboçya. Bal ve Fresk. Tayland. Arınma Odası. Dünyadan soyutlanmış bu mekanda neler olduğunu anlayacaksınız! Bangkok. Gerçeğin Rengi aynı zamanda Yalanın da Rengi’dir!Ve Paris. Her şey sona ermedi, yeni başlıyor.Çabuk saklan, Baba geliyor!",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k5)
        //*******
        let kitap15 = Kitap(id: 15, kitap_ad: "1984", kitap_yazar: "George Orwell", kitap_resim: "1984", kitap_fiyat: 9.99,kitap_aciklama: "Parti’nin dünya görüşü, onu hiç anlayamayan insanlara çok daha kolay dayatılıyordu. (...) Her şeyi yutuyorlar ve hiçbir zarar görmüyorlardı çünkü tıpkı bir mısır tanesinin bir kuşun bedeninden sindirilmeden geçip gitmesi gibi, yuttuklarından geriye bir şey kalmıyordu.George Orwell’in kült kitabı Bin Dokuz Yüz Seksen Dört, yazarın geleceğe ilişkin bir kâbus senaryosudur. Bireyselliğin yok edildiği, zihnin kontrol altına alındığı, insanların makineleşmiş kitlelere dönüştürüldüğü totaliter bir dünya düzeni, romanda inanılmaz bir hayal gücüyle, en ince ayrıntısına kadar kurgulanmıştır. Geçmişte ve günümüzde dünya sahnesinde tezgâhlanan oyunlar düşünüldüğünde, ütopik olduğu kadar gerçekçi bir romandır Bin Dokuz Yüz Seksen Dört. Güncelliğini hiçbir zaman yitirmeyen bir başyapıttır; yalnızca yarına değil, bugüne de ilişkin bir uyarı çığlığıdır.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k1)
        let kitap16 = Kitap(id: 16, kitap_ad: "Anna Karenina", kitap_yazar: "Tolstoy", kitap_resim: "annakarenina", kitap_fiyat: 9.99,kitap_aciklama: "Lev Nikolayeviç Tolstoy (1828-1910): Savaş ve Barış, Diriliş ve Kreutzer Sonat’ın büyük yazarı, sadece toplumsal olayları değil, bireyin duygularını da olağanüstü tasvir yeteneğiyle aktarmıştır. Yazar, en ünlü eserlerinden biri olan Anna Karenina’da evlilik, aşk ve ölüm konularını derin bir gözlem gücüyle ele almış, muhteşem edebi dehasıyla işlemiştir. 1875-1877 yılları arasında Ruskiy Vestnik dergisinde tefrika edilen romanın ilk baskısı 1878’de yapılmıştır",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k1)
        let kitap17 = Kitap(id: 17, kitap_ad: "Hayvan Çiftliği", kitap_yazar: "George Orvell", kitap_resim: "hayvançiftliği", kitap_fiyat: 9.99,kitap_aciklama: "İngiliz yazar George Orwell (1903-1950), ülkemizde daha çok 1984 adlı kitabıyla tanınır. Hayvan Çiftliği, onun çağdaş klasikler arasına girmiş ikinci ünlü yapıtıdır. 1940'lardaki 'reel sosyalizm'in eleştirisi olan bu roman, dünya edebiyatında 'yergi' türünün başyapıtlarından biridir. Hayvan Çiftliği'nin kişileri hayvanlardır.George Orwell, bu romanında tarihsel bir gerçeği eleştirmektedir. Romandaki önder domuzun, düpedüz Stalin'i simgelediği açıkça görülecektir. Öbür kişiler bire bir belli olmasalar da, bir diktatörlük ortamında yer albilecek kişilerdir. Romanın alt başlığı Bir Peri Masalı'dır. Küçükleri eğlendirecek bir peri masalı değildir; ama roman, bir masal anlatımıyla yazılmıştır.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k1)
        let kitap18 = Kitap(id: 18, kitap_ad: "İki Şehrin Hikayesi", kitap_yazar: "Charles Dickens", kitap_resim: "ikişehrinhikayesi", kitap_fiyat: 9.99,kitap_aciklama: "Dünya edebiyatının en önemli klasik yapıtlarından biri olan İki Şehrin Hikâyesi, Paris ve Londra arasında gelişen olay kurgusuyla, tarihin en hareketli anlarından birinin, Fransız Devrimi’nin ekseni etrafında biçimlenir. Edebiyat dünyasının “Dickens’ın en büyük tarihî romanı” olarak, yazarın kendisinin ise “Yazdığım en iyi hikâye” diye tanımladıkları yapıt, Fransız Devrimi ile Terör Dönemi kargaşasında yaşamak zorunda kalan bir grup insanın özel yaşamlarını aktarırken, dönemin acımasız toplumsal koşullarını da irdeler.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k1)
        let kitap19 = Kitap(id: 19, kitap_ad: "Kürk Mantolu Madonna", kitap_yazar: "Sabahattin Ali", kitap_resim: "kürkmantolumadonna", kitap_fiyat: 9.99,kitap_aciklama: "'Her gün, daima öğleden sonra oraya gidiyor, koridorlardaki resimlere bakıyormuş gibi ağır ağır, fakat büyük bir sabırsızlıkla asıl hedefine varmak isteyen adımlarımı zorla zapt ederek geziniyor, rastgele gözüme çarpmış gibi önünde durduğum 'Kürk Mantolu Madonna'yı seyre dalıyor, ta kapılar kapanıncaya kadar orada bekliyordum.' Kimi tutkular rehberimiz olur yaşam boyunca. Kollarıyla bizi sarar. Sorgulamadan peşlerinden gideriz ve hiç pişman olmayacağımızı biliriz. Yapıtlarında insanların görünmeyen yüzlerini ortaya çıkaran Sabahattin Ali, bu kitabında güçlü bir tutkunun resmini çiziyor. Düzenin sildiği kişiliklere, yaşamın uçuculuğuna ve aşkın olanaksızlığına (?) dair, yanıtlanması zor sorular soruyor.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k1)
        let kitap20 = Kitap(id: 20, kitap_ad: "Sefiller", kitap_yazar: "Victor Hugo", kitap_resim: "sefiller", kitap_fiyat: 9.99,kitap_aciklama: "İhtiyaçları fazlalaşan insanlar, kaynakların sınırlarını zorlamaya itilir ve yollarına çıkan savunmasız birinden bile irkilir. İş ve ücretler, yiyecek ve barınma, cesaret ve iyi niyet; hepsi sahip olamadıkları şeylerdir. Işık gölgeye dönüşür ve karanlık yüreklerini doldurur. Bu karanlık, insanın içindeki zayıflığı ele geçirir ve onu utanç verici işlere zorlar. Artık hiçbir dehşet veya korku dışlanmaz. Ümitsizlik ve çaresizlikle hepsi kötülük ve suça yönelir... Hepsi sefilleşmiş, bozulmuş birer pislik gibi gözükür. Fakat o denli alçalmış kişilerin de daha fazla alçalamayacağı bir çizgi vardır ve bu dönüm noktasında, dış dünya adeta yutar bu zavallı, talihsiz, kimliksiz insanları... Onlar Sefiller’dir; toplumdan dışlananlar..",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k1)
        let kitap21 = Kitap(id: 21, kitap_ad: "Suç ve Ceza", kitap_yazar: "Dostoyevski", kitap_resim: "suçveceza", kitap_fiyat: 9.99,kitap_aciklama: "Dostoyevski (1821-1881): Gerek 1840 ortalarından itibaren yayımlamaya başladığı Beyaz Geceler ve Öteki gibi uzun öykü-kısa romanlarıyla, gerekse ilkini elinizde tuttuğunuz Suç ve Ceza, Budala ve Karamazov Kardeşler gibi Sibirya sürgünü sonrası büyük romanlarıyla Dostoyevski, insanın karanlık yakasını kendinden sonraki bütün romancıları derinden etkileyecek biçimde dile getirmiş büyük bir 19. yüzyıl ustasıdır.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k1)
        let kitap22 = Kitap(id: 22, kitap_ad: "Şeker Portakalı", kitap_yazar: "Jose Mauro de Vasconcelos", kitap_resim: "şekerportakalı", kitap_fiyat: 9.99,kitap_aciklama: "Brezilya edebiyatının klasiklerinden Şeker Portakalı, José Mauro de Vasconcelos’un başyapıtı kabul edilir. Yetişkinler dünyasının sınırlamalarına hayal gücüyle meydan okuyan Zezé’nin yoksulluk, acı ve ümit dolu hikâyesi yazarın çocukluğundan derin izler taşır.Beş yaşındaki Zezé hemen her şeyi tek başına öğrenir: sadece bilye oynamayı ve arabalara asılmayı değil, okumayı ve sokak şarkıcılarının ezgilerini de. En yakın sırdaşıysa, anlattıklarına kulak veren ve Minguinho adını verdiği bir şeker portakalı fidanıdır…",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k1)
        let kitap23 = Kitap(id: 23, kitap_ad: "Uçurtma Avcısı", kitap_yazar: "Khaled Hosseini", kitap_resim: "uçurtmaavcısı", kitap_fiyat: 9.99,kitap_aciklama: "Emir ve Hasan, Kabil'de monarşinin son yıllarında birlikte büyüyen iki çocuk... Aynı evde büyüyüp, aynı sütanneyi paylaşmalarına rağmen Emir'le Hasan'ın dünyaları arasında uçurumlar vardır: Emir, ünlü ve zengin bir işadamının, Hasan ise onun hizmetkârının oğludur. Üstelik Hasan, orada pek sevilmeyen bir etnik azınlığa, Hazaralara mensuptur.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k1)
        // ******
        let kitap24 = Kitap(id: 24, kitap_ad: "Çile", kitap_yazar: "Necip Fazıl Kısakürek", kitap_resim: "çile", kitap_fiyat: 9.99,kitap_aciklama: "1925'de 'Örümcek Ağı', 1928'de 'Kaldırımlar', 1932'de 'Ben ve Ötesi', 1953'de 'Sonsuzluk Kervanı' ve 1969'da 'Şiirlerim' ismiyle yayınlanmış şiir kitaplarının bir çok bakımdan kendini ifadelendiremediğini söyleyen Necip Fazıl Kısakürek'in, 1922'de Yeni Mecmua'da yayınlanmış ilk şiirinden başlayarak bizzat kendisi tarafından süzülen, ayıklanan, düzeltilen ve bir araya getirilen bütün şiirleri…Ve Poetikası… Bir yanda belli başlı bir sanat anlayışından tüten şiirler, diğer yanda, bu sanat anlayışının tüttürdüğü şiir mefkûresi…",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k2)
        let kitap25 = Kitap(id: 25, kitap_ad: "Lavinya", kitap_yazar: "Özdemir Asaf", kitap_resim: "lavinia", kitap_fiyat: 9.99,kitap_aciklama: "Özdemir Asaf, öğrenci olduğu dönemde platonik aşk duyduğu bir kıza Lavinia'yı yazar. Dizelerinden de anlaşıldığı üzere Lavinia, karşılıksız aşkını konu edinmektedir",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k2)
        let kitap26 = Kitap(id: 26, kitap_ad: "Sevda Sözleri", kitap_yazar: "Cemal Süreya", kitap_resim: "sevdasözleri", kitap_fiyat: 9.99,kitap_aciklama: "Sevda Sözleri, Cemal Süreya’nın öğrencilik yıllarında başlayan ve ölümüne kadar devam eden şiir hayatında yayımladığı tüm eserlerin yanı sıra, dergilerde ve mektuplarda kalmış, bazısı adsız ve yarım bırakılmış şiirleri de bir araya getiriyor.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k2)
        let kitap27 = Kitap(id: 27, kitap_ad: "Sevgi Duvarı", kitap_yazar: "Can Yücel", kitap_resim: "sevgiduvarı", kitap_fiyat: 9.99,kitap_aciklama: "Can Yücel, gerçekten de tüm zamanlarda okunmuş, hissedilmiş şiirleri kaleme alan, edebiyatımızın önemli bir şairidir. Sevgi duvarı şiirinde şair aşk temasını işlemiştir",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k2)
        let kitap28 = Kitap(id: 28, kitap_ad: "Yalnızlık Paylaşılmaz", kitap_yazar: "Özdemir Asaf", kitap_resim: "yalnızlıkpaylaşılmaz", kitap_fiyat: 9.99,kitap_aciklama: "Kısa dizelerle, çağdaş bir içerikle kurduğu, kendine özgü dokunaklı söyleyişiyle bir hayat dersi gibi okunabilecek şiiri genç kuşak okurların her zaman ilgisini çeken, Yalnızlık Paylaşılmaz dendiğinde akla gelen ilk şair Özdemir Asaf bir kez de tek vuruşta okumak için en sevilen kitabıyla bütün yalnızlıklara sesleniyor.",kitap_dil: "Türkçe",kitap_yayinevi: "Hamlet" , kitap_kategori: k2)
        let kitap29 = Kitap(id: 29, kitap_ad: "Yaş Otuz Beş", kitap_yazar: "Cahit Sıtkı Tarancı", kitap_resim: "yaşotuzbeş", kitap_fiyat: 9.99,kitap_aciklama: "Cahit Sıtkı Tarancı 4 Ekim 1910'da Diyarbakır'da doğdu. İlkokulu orada, ortaokulu İstanbul'da Saint Joseph'te, liseyi Galatasaray'da okudu. Şiire lisede başladı. 1931'de Mülkiye Mektebine yazıldı, bitirmeden ayrıldı. 1939'da Paris'e gitti, Science Politique'e girdi. İkinci Dünya savaşının çıkması üzerine yurda döndü. Askerliğini Edremit'te yaptı (1941-1943). Bir süre İstanbul'da babasının bürosunda çalıştı. Sonra Ankara'da Anadolu Ajansı, Toprak Mahsulleri Ofisi ve Çalışma Bakanlığında çevirmenlikle görevlendirildi. 1951'de evlendi. 1954 başında hastalandı. İki yıl tedavi gördü, ama iyileşemediğinden Viyana'ya gönderildi. 12 Ekim 1956'da toprağa verildi. 1946'da C.H.P. Şiir Yarışmasında `Otuz Beş Yaş' adlı şiiriyle birincilik ödülünü kazandı. 1957'de Varlık dergisinin soruşturmasında yaşayan sanatçıların en beğenileni seçildi. Şiir kitapları: Ömrümde Sükut-t (1933), Otuz Beş Yaş (1946), Düşten Güzel (1952), Sonrası (1957). Bütün bu kitaplarını bir araya getirirken, kitaplarına girmemiş 35 şiirini de derleyip bir ciltte topladık. Bu kitap, şairin bütün şiirlerini kapsamaktadır.",kitap_dil: "Türkçe",kitap_yayinevi: "DHamlet" , kitap_kategori: k2)
        
        liste.append(kitap1)
        liste.append(kitap2)
        liste.append(kitap3)
        liste.append(kitap4)
        liste.append(kitap5)
        liste.append(kitap6)
        liste.append(kitap7)
        liste.append(kitap8)
        liste.append(kitap9)
        liste.append(kitap10)
        liste.append(kitap11)
        liste.append(kitap12)
        liste.append(kitap13)
        liste.append(kitap14)
        liste.append(kitap15)
        liste.append(kitap16)
        liste.append(kitap17)
        liste.append(kitap18)
        liste.append(kitap19)
        liste.append(kitap20)
        liste.append(kitap21)
        liste.append(kitap22)
        liste.append(kitap23)
        liste.append(kitap24)
        liste.append(kitap25)
        liste.append(kitap26)
        liste.append(kitap27)
        liste.append(kitap28)
        liste.append(kitap29)
        
    }
}


