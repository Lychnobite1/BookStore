//
//  KitapDetayCellView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import SwiftUI

struct KitapDetayCellView: View {
    let kitap : Kitap
    var body: some View {
        NavigationStack{
            ZStack{
                Color("ColorGreenLight")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image(kitap.kitap_resim!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200,height: 300)
                    Text(kitap.kitap_ad!)
                    Text(kitap.kitap_yazar!)
                }
            }
        }
    }
}

struct KitapDetayCellView_Previews: PreviewProvider {
    static let viewmodel = KitapData()
    static var previews: some View {
        KitapDetayCellView(kitap: viewmodel.liste[0])
    }
}
