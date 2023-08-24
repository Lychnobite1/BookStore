//
//  SepeteEkleView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import SwiftUI

struct SepeteEkleView: View {
    @ObservedObject var ViewModel = KitapListe.shared
    @State private var toplamTutar : Double = 0.0
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(ViewModel.kitapListesi) {i in
                        SepeteEkleCellView(kitap: i)
                    }
                }.background(.white)
                    .listStyle(.plain)
                if ViewModel.kitapListesi.count == 0 {
                    EmptyShowView()
                        .offset(y:-200)
                }
                
                if ViewModel.kitapListesi.count != 0 {
                    SiparisFiyatView(toplamTutar: $toplamTutar)
                        .padding(.bottom,20)
                        .padding(.horizontal)
                }
                 
                
            }.onAppear{
                toplamTutar = ViewModel.kitapListesi.reduce(0.0) {$0 + $1.kitap_fiyat!}
            }
            
        }
       
    }
}

struct SepeteEkleView_Previews: PreviewProvider {
    static var previews: some View {
        SepeteEkleView()
    }
}
