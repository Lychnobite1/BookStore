//
//  KategoriButtonView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import SwiftUI

struct KategoriButtonView: View {
    var kategori : Kategori
    @State private var isClicked = false
    @Binding var selectedKategoriID : Int?
    
    var body: some View {
        /*
        Button{
            self.isClicked.toggle()
        }label: {
            Text(kategori.kategori_ad!)
                .foregroundColor(isClicked ? .white : .black)
                .fontWeight(.medium)
                .padding()
        }.border(.black)
        .buttonBorderShape(.capsule)
        .background(isClicked ? .black : .white)
         */
        /*
        Button{
            self.isClicked.toggle()
            if isClicked {
                selectedKategoriID = kategori.id
            }
            else {
                selectedKategoriID = nil
            }
        }label: {
            Text(kategori.kategori_ad!)
                .foregroundColor(isClicked ? .white : .black)
                .fontWeight(.medium)
                .padding()
        }.border(.black)
        .buttonBorderShape(.capsule)
        .background(isClicked ? .black : .white)
       */
        Button{
            if selectedKategoriID == kategori.id {
                selectedKategoriID = nil // Eğer zaten seçiliyse, seçimi kaldır.
            } else {
                selectedKategoriID = kategori.id // Değilse, seçimi güncelle.
            }
            //selectedKategoriID = kategori.id
        }label: {
            Text(kategori.kategori_ad!)
                .foregroundColor(selectedKategoriID == kategori.id ? .white : .black)
                .fontWeight(.medium)
                .padding()
        }.border(.black)
        .buttonBorderShape(.capsule)
        .background(selectedKategoriID == kategori.id ? .black : .white)
        
        
    }
}

struct KategoriButtonView_Previews: PreviewProvider {
    static let viewmodel = KitapData()
    static var previews: some View {
        KategoriButtonView(kategori: viewmodel.kategori[2],selectedKategoriID: .constant(nil))
    }
}
