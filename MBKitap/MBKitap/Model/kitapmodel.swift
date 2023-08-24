//
//  kitapmodel.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 12.08.2023.
//

import Foundation


class Kitap : Identifiable{
    var id : Int?
    var kitap_ad : String?
    var kitap_yazar : String?
    var kitap_resim : String?
    var kitap_fiyat : Double?
    var kitap_aciklama : String?
    var kitap_dil : String?
    var kitap_yayinevi : String?
    var kitap_kategori : Kategori?
    
    init(){
        
    }
    
    
    init(id: Int, kitap_ad: String, kitap_yazar: String, kitap_resim: String,kitap_fiyat: Double,kitap_aciklama:String,kitap_dil:String,kitap_yayinevi:String ,kitap_kategori: Kategori) {
        self.id = id
        self.kitap_ad = kitap_ad
        self.kitap_yazar = kitap_yazar
        self.kitap_resim = kitap_resim
        self.kitap_fiyat = kitap_fiyat
        self.kitap_aciklama = kitap_aciklama
        self.kitap_dil = kitap_dil
        self.kitap_yayinevi = kitap_yayinevi
        self.kitap_kategori = kitap_kategori
    }
}



/*
 class Film : Identifiable {
     var film_id : Int?
     var film_ad : String?
     var film_yil : Int?
     var film_resim : String?
     var film_kategori : Kategori?
     var film_yonetmen : Yonetmen?
     
     init(){
         
     }
     
     init(film_id: Int, film_ad: String, film_yil: Int, film_resim: String, film_kategori: Kategori, film_yonetmen: Yonetmen) {
         self.film_id = film_id
         self.film_ad = film_ad
         self.film_yil = film_yil
         self.film_resim = film_resim
         self.film_kategori = film_kategori
         self.film_yonetmen = film_yonetmen
     }
 }

 */



/*
 var liste = [Film]()
 let k1 = Kategori(kategori_id: 1, kategori_ad: "Aksiyon")
 let k2 = Kategori(kategori_id: 2, kategori_ad: "Drama")
 let k3 = Kategori(kategori_id: 3, kategori_ad: "Bilim Kurgu")
 
 let y1 = Yonetmen(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
 let y2 = Yonetmen(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")
 let y3 = Yonetmen(yonetmen_id: 3, yonetmen_ad: "Nuri Bilge Ceylan")
 let y4 = Yonetmen(yonetmen_id: 4, yonetmen_ad: "Roman Polanski")
 
 let f1 = Film(film_id: 1, film_ad: "Django", film_yil: 2014, film_resim: "django", film_kategori: k1, film_yonetmen: y1)
 let f2 = Film(film_id: 2, film_ad: "Interstellar", film_yil: 2015, film_resim: "interstellar", film_kategori: k3, film_yonetmen: y2)
 let f3 = Film(film_id: 3, film_ad: "Inception", film_yil: 2010, film_resim: "inception", film_kategori: k3, film_yonetmen: y2)
 let f4 = Film(film_id: 4, film_ad: "Anadoluda", film_yil: 2011, film_resim: "birzamanlaranadoluda", film_kategori: k2, film_yonetmen: y3)
 let f5 = Film(film_id: 5, film_ad: "The Pianist", film_yil: 2008, film_resim: "thepianist", film_kategori: k2, film_yonetmen: y4)
 let f6 = Film(film_id: 6, film_ad: "The Hateful Eight", film_yil: 2017, film_resim: "thehatefuleight", film_kategori: k1, film_yonetmen: y1)
 liste.append(f1)
 liste.append(f2)
 liste.append(f3)
 liste.append(f4)
 liste.append(f5)
 liste.append(f6)
 
 filmlerListesi = liste
 */
