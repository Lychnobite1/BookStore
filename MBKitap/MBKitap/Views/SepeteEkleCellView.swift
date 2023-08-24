//
//  SepeteEkleCellView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import SwiftUI

struct SepeteEkleCellView: View {
    let kitap : Kitap
    var body: some View {
        HStack{
            Image(kitap.kitap_resim!)
                .resizable()
                .scaledToFit()
                .frame(width: 150,height: 150)
            VStack(alignment: .leading, spacing: 15){
                Text(kitap.kitap_ad!)
                Text(kitap.kitap_yazar!)
                Text("\(String(kitap.kitap_fiyat!)) TL")
            }
            Spacer()
        }
    }
}

struct SepeteEkleCellView_Previews: PreviewProvider {
    static let videmodel = KitapData()
    static var previews: some View {
        SepeteEkleCellView(kitap: videmodel.liste[5])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
