//
//  KategoriView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import SwiftUI

struct KategoriView: View {
    @ObservedObject var ViewModel = KitapData()
    @Binding var selectedKategoriID : Int?
    var body: some View {
        /*
        ScrollView(.horizontal,showsIndicators: false){
            LazyHGrid(rows: [GridItem(.flexible())]){
                ForEach(ViewModel.kategori){i in //  ForEach(ViewModel.kategori){i in
                    KategoriButtonView(kategori: i)
                        .padding(.horizontal,5)
                        .padding(.leading,5)
                        
                }
            }
        }
        */
        ScrollView(.horizontal,showsIndicators: false){
            LazyHGrid(rows: [GridItem(.flexible())]){
                ForEach(ViewModel.kategori){i in //  ForEach(ViewModel.kategori){i in
                    KategoriButtonView(kategori: i,selectedKategoriID: $selectedKategoriID)
                        .padding(.horizontal,5)
                        .padding(.leading,5)
                        
                }
            }
        }
        
    }

}

struct KategoriView_Previews: PreviewProvider {
    static var previews: some View {
        KategoriView(selectedKategoriID: .constant(nil))
            .previewLayout(.sizeThatFits)
    }
}
