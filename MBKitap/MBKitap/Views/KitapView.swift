//
//  KitapView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import SwiftUI

struct KitapView: View {
    @ObservedObject var ViewModel = KitapData()
    @Binding var count : Int
    @Binding var search : String
    
    @Binding var selectedKategoriID : Int? //
    //@State private var count = 0
    
    func arama() -> [Kitap] {
        if search.isEmpty {
            return ViewModel.liste
        }
        else {
            return ViewModel.liste.filter {i in
                i.kitap_ad?.localizedCaseInsensitiveContains(search) == true
            }
        }
    }
    
    
    var body: some View {
        /*
        NavigationStack{
            ScrollView(.vertical,showsIndicators: false){
                LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())]){
                    ForEach(ViewModel.liste){ i in
                        
                        KitapCellView(count: $count, kitap: i)
                            .padding(3)
                        
                    }
                }
            }
        }
        */
        /*
        NavigationStack{
            ScrollView(.vertical,showsIndicators: false){
                LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())]){
                    ForEach(arama()){ i in
                        
                        KitapCellView(count: $count, kitap: i)
                            .padding(3)
                        
                    }
                }
            }
        }
        */
        NavigationStack{
            ScrollView(.vertical,showsIndicators: false){
                LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())]){
                    ForEach(arama()){ i in
                        if selectedKategoriID == nil || selectedKategoriID == i.kitap_kategori?.id {//selectedKategoriID == i.kitap_kategori?.id {
                            KitapCellView(count: $count, kitap: i)
                                .padding(3)
                        }
                        
                    }
                }
            }
        }
    }
}

struct KitapView_Previews: PreviewProvider {
    static var previews: some View {
        KitapView(count: .constant(0),search: .constant(""),selectedKategoriID: .constant(nil))
    }
}
