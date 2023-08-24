//
//  MainView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import SwiftUI

struct MainView: View {
    @State private var count = 0
    @State private var search = ""
    @State private var kitapListesi = [Kitap]()
    @State private var selectedKategoriID : Int? = nil
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    HeaderView(count: $count)
                }
                CustomSearchBar(text: $search)
                Spacer()
                HStack{
                    Text("Kategoriler")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding(.leading)
                    Spacer()
                }
                KategoriView(selectedKategoriID: $selectedKategoriID).padding(.horizontal,10)
                    .frame(height: 65)
                Spacer()
                HStack{
                    Text("Kitaplar")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding(.leading)
                    Spacer()
                }
                
                KitapView(count: $count,search: $search,selectedKategoriID: $selectedKategoriID)
                    .padding(.horizontal,9)
                
                
            }
            
        }

        
        .navigationBarBackButtonHidden(true)
        
    }
}

struct CustomSearchBar : View {
    @Binding var text : String
    var body : some View {
        HStack {
            TextField("Kitap Ara", text: $text)
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .background(Color.secondary.opacity(0.2))
                .cornerRadius(12)
                .padding(.horizontal)
                    
            Spacer()
        }
        .padding(.top, 8)
    }
}

struct MainView_Previews: PreviewProvider {
    static let ViewModel = KitapData()
    static var previews: some View {
        MainView()
    }
}


