//
//  kategorimodel.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 12.08.2023.
//

import Foundation


class Kategori : Identifiable {
    var id : Int?
    var kategori_ad : String?
    init(){
        
    }
    
    init(id: Int, kategori_ad: String) {
        self.id = id
        self.kategori_ad = kategori_ad
    }
}



/*
 import Foundation

 class Kategori : Identifiable { // listelemek için Identifiable kullanılır.
     
     
     var kategori_id : Int?
     var kategori_ad : String?
     
     init(){
         
     }
     
     
     init(kategori_id: Int, kategori_ad: String) {
         self.kategori_id = kategori_id
         self.kategori_ad = kategori_ad
     }
 }

 */
