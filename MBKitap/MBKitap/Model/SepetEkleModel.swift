//
//  SepetEkleModel.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import Foundation

class KitapListe : ObservableObject {
    static let shared = KitapListe()
    @Published var kitapListesi : [Kitap] = []
    
    func kitapEkle(kitap:Kitap){
        kitapListesi.append(kitap)
    }
    func kitapCikar(kitap:Kitap){
        kitapListesi.removeAll(where: {$0.id == kitap.id})
    }
}
